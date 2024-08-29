# GIT COMMIT PROMPTS
message_prompt="___WHY DID YOU MAKE CHANGES?___"
echo "$message_prompt"
read message

separator=":"
last_commit=$(git log -1 --pretty=%B)
if [[ "$last_commit" == *"$separator"* ]]; then
  IFS="$separator" read -r first_word _ <<< "$last_commit" 
  #echo "first word is: $first_word"
fi

prefix_prompt="___ADD A PREFIX?___"
echo "$prefix_prompt"
if [[ -z "$first_word" ]]; then
  #if empty
  read prefix
else
  echo "$first_word ? [Y=enter]"
  read prefix
  #read -e -p "$prefix_prompt" -i "$first_word" prefix #BAD
  #read -e -p "$prefix_prompt\n $first_word?[Y=enter]" prefix
fi

if [ "$prefix" != "" ]
then
  message="${prefix}${separator} ${message}"
else
  message="${first_word}${separator} ${message}"
fi

echo "_______________"
echo "// git commit -m '${message}'"
git commit -m "${message}"

