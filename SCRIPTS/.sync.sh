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

#TODO: get the message of what was worked on 
echo "_______________"
echo "// git commit -m '${folder} sync'"
git commit -m "${folder} sync"


echo "_______________"
echo "// git fetch"
git fetch

branch_name=$(git branch --show-current)

echo "_______________"
echo "// git rebase origin/$branch_name"
git rebase origin/branch_name

echo "_______________"
echo "// git log --graph --name-only --oneline -n 2"
git log --graph --name-only --oneline -n 2

echo "_______________"
echo "// git push origin $branch_name"
git push origin branch_name
echo "_______________"
echo "// git log --graph --name-only --oneline -n 2"
git log --graph --name-only --oneline -n 2


