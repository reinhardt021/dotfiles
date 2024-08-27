echo "_______________"
echo "Why did you make these changes?"
echo "_______________"
read message
echo "_______________"
echo "What prefix do you want?"
echo "_______________"
read prefix

if [ $prefix != "" ]
then
  message="[${prefix}] ${message}"
fi

echo "// git commit -m '${message}'"
git commit -m "${message}"

