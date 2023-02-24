#echo "test"
echo "// git status"
git status
echo "// git add ."
git add .
echo "// git status"
git status
echo "// git commit -m 'dotfiles sync'"
git commit -m "dotfiles sync"

echo "// git fetch"
git fetch
echo "// git rebase origin/main"
git rebase origin/main

echo "// git log --graph --name-only --oneline -n 2"
git log --graph --name-only --oneline -n 2

echo "// git push origin main"
git push origin main
echo "// git log --graph --name-only --oneline -n 2"
git log --graph --name-only --oneline -n 2


