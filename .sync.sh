#echo "test"
git status
git add .
git status
git commit -m "dotfiles sync"

git fetch
git rebase origin/main

git log --graph --name-only --oneline -n 2
git push origin main
git log --graph --name-only --oneline -n 2


