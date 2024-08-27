echo "_______________"
echo "Why did you make these changes?..."
read message
echo "_______________"
echo "What prefix do you want?..."
read prefix

if [ "$prefix" != "" ]
then
  message="${prefix}${message}"
fi

echo "_______________"
echo "// git commit -m '${message}'"
git commit -m "${message}"

