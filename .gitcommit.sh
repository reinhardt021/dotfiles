# GIT COMMIT PROMPTS
message_prompt="___WHY DID YOU MAKE CHANGES?___"
echo "$message_prompt"
read message

separator=":"
last_commit=$(git log -1 --pretty=%B)
if [[ "$last_commit" == *"$separator"* ]]; then
  IFS="$separator" read -r first_word _ <<< "$last_commit" 
fi

prefix_prompt="___ADD A PREFIX?___"
echo "$prefix_prompt"
if [[ -z "$first_word" ]]; then
  read prefix
else
  echo "$first_word ? [Y=enter]"
  read prefix
fi

if [ "$prefix" != "" ]
then
  message="${prefix}${separator} ${message}"
fi

if [ "$first_word" != "" ]
then
  message="${first_word}${separator} ${message}"
fi

echo "_______________"
echo "// git commit -m '${message}'"
git commit -m "${message}"

