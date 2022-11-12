
# modifying the bash prompt to something simpler
# PS1="\u@\W\$"
color_prompt=yes
if [ "$color_prompt" = yes ]; then
  PS1="\[\033[35m\]@\W\[\033[37m\]\$ "
else
  PS1="@\W\$ "
fi

#// Go directly to the Dotfiles folder
alias cdd='echo "// cd ~/dotfiles"; cd ~/dotfiles'

# modifying 'ls' command to default display all directory info
alias ls='ls -aFG'
alias l='ls'
# -a for showing hidden files
# -F for files vs directories
# -G for colors 

# GIT
alias g='git'
alias gb='git branch'
alias gc='echo "// git checkout <branch>"; git checkout'

alias gf='git fetch'
# // to rebase from the remote branch
# git fetch
# git rebase origin/master

alias gp='git pull'
alias gpull='echo "// git pull <branch>"; git pull'
alias gpush='echo "// git push <branch>"; git push'
alias gpom='echo "// git push origin main"; git push origin main'

alias gs='git status'
alias gd='git diff' 
alias gdc='git diff --cached' #// to see staged (added) changes (hunk)

alias ga='git add' 
alias gcm='echo "// git commit -m <text>"; git commit -m ' 

#// to see a list of stashed patches
alias gslist='echo "// git stash list"; git stash list'
alias gsshow='echo "// git stash show -p"; git stash show -p'
# git stash show -p 3 // to see the #4 stashed patch/changes

# git show stash@{0} // to show tracked files stashed in index 0
# git show stash@{0}^3 // to show untracked files stashed in index 0

alias gspush='echo "// git stash push"; git stash push'
# git stash push -m "message" <path>
alias gsdrop='echo "// git stash drop <number>"; git stash drop '

# git log // to see if your current changes match the remote
alias gl='echo "// git log"; git log'
alias glog='echo "// git log"; git log'

# // to see which commits are on your master which you haven't yet pushed
# git log origin/master..master
alias gld='echo "// git log diff b/w remote"; git log origin/main..main'

# // to see which commits are on origin/master (remote) but not yet on master (local)
# git log master..origin/master

# // git log GRAPH
alias glg='echo "// git log --graph --format=.."; git log --pretty=format:"%C(dim white)%d%C(reset) %s %C(dim white)[%h %ae %cr]%C(reset)" --graph'
alias glgraph='echo "// git log --graph"; git log --graph'

# // git log FILES to see which files were updated
alias glf='echo "// git log --name-only --oneline"; git log --name-only --oneline'

# // git log PATCHES to see the diffs in each
alias glp='echo "// git log -p"; git log -p'
# // can add --author='Reinhardt' to see changes  by specific people
# // just another alias to make t easier to view changes
alias glshow='echo "// git log -p"; git log -p'

# // to reset to a previous commit but careful as you lose everything 
# git reset --hard <commit-ID || HEAD>

# SAVE TO SSH AGENT
#// to never need to enter passphrase again
#eval $(ssh-agent)
#ssh-add
#// enter passphrase

alias cdh='cd ~'
alias cdx='cd /data/data/com.termux/files/home/storage/downloads/_esc'

alias cdz='cd /data/data/com.termux/files/home/zero-one'

# alias to open neovim quickly
alias n='nvim'
alias nv='nvim'


alias t='tmux '
alias tls='tmux ls'
alias tns='sh ~/dotfiles/tmux-new-session.sh'
alias tas='tmux attach-session -t '
alias trs='tmux rename-session -t '




