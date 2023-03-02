folder=${PWD##*/}
#echo ${folder} 
#echo "test"
echo "_______________"
echo "// git status"
git status
echo "_______________"
echo "// git add ."
git add .
echo "_______________"
echo "// git status"
git status
echo "_______________"
echo "// git commit -m '${folder} sync'"
git commit -m "${folder} sync"


echo "_______________"
echo "// git fetch"
git fetch
echo "_______________"
echo "// git rebase origin/main"
git rebase origin/main

echo "_______________"
echo "// git log --graph --name-only --oneline -n 2"
git log --graph --name-only --oneline -n 2

echo "_______________"
echo "// git push origin main"
git push origin main
echo "_______________"
echo "// git log --graph --name-only --oneline -n 2"
git log --graph --name-only --oneline -n 2


