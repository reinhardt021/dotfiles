# SHELL SETUP

# // to see OS from command line
# $ uname
# $ echo $OSTYPE

# // to see OS version from linux
# $ lsb_release -a

# modifying the bash prompt to something simpler
# PS1="\u@\W\$"
color_prompt=yes
if [ "$color_prompt" = yes ]; then
  #PS1="\[\033[35m\]@\W\[\033[37m\]\$ "
  #PS1 = ${debian_chroot:+($debian_chroot)}\u@\h:\w\$
  #ex: = root@ubuntu-s-1vcpu-1gb-sfo3-01:~#
  PS1="${debian_chroot:+($debian_chroot)}\[\033[34m\]\u@\h:\w\[\033[37m\]\$ "
else
  PS1="@\W\$ "
fi

# modifying 'ls' command to default display all directory info
alias ls='ls -aFG'
alias l='ls'
# -a for showing hidden files
# -F for files vs directories
# -G for colors

#// alias to always prompt before overwriting and to be verbose"
alias mv='mv -iv '

#// Go directly to the Dotfiles folder
alias cdd='echo "// cd ~/dotfiles"; cd ~/dotfiles'


# get working directory
alias gwd='echo "// pwd |pbcopy"; pwd |pbcopy'

# alias to open neovim quickly
alias n='echo "// nvim <command>"; nvim'
alias nv='echo "// nvim <command>"; nvim'



# GIT
alias g='echo "// git <command>"; git'
alias gb='echo "// git branch"; git branch'

alias gc='echo "// git checkout <branch>"; git checkout'

alias ga='echo "// git add <files>"; git add ' 
alias gs='echo "// git status"; git status'
alias gd='echo "// git diff";git diff'
alias gdc='echo "// git diff --cached"; git diff --cached' #// to see staged (added) changes (hunk)

#// to push changes into the stash
alias gspush='echo "// git stash push"; git stash push'

#// to see a list of stashed patches
alias gslist='echo "// git stash list"; git stash list'
alias gsshow='echo "// git stash show -p"; git stash show -p'
# git stash show -p 3 // to see the #4 stashed patch/changes

# git show stash@{0} // to show tracked files stashed in index 0
# git show stash@{0}^3 // to show untracked files stashed in index 0

#// to apply changes from a certain stash index (0 being at the top)
# git stash apply <stash-index>

# git stash push -m "message" <path>
alias gsdrop='echo "// git stash drop <number>"; git stash drop '

alias gf='echo "// git fetch"; git fetch'
#alias gp='git pull'

## GIT MERGE

# // to merge another branch into your current branch
# git merge incomingBranch

## GIT REBASE

# // to rebase your current branch with another branch
# git rebase incomingBranch

# // to rebase your current branch from the remote branch
# git fetch
# git rebase origin/master

## Squash Commits on your branch

# // to find the number of commits to squash
# git log
# // to open interactive to squash commits and give a better commit message
# git rebase -i HEAD~<number-of-commits>
# git rebase -i HEAD~9
# // To push up the changes
# git push --force origin feature/COR-7412-edocs-re-write-create-feature-switch

### Rebase your branch to resolve merge conflicts 
#&& to consolidate your changes on top of the branch you want to merge into
#"git rebase feature/DEP-118"
#>>
#Make sure your local has all the latest changes of the destination branch (ex: DEP-118) 
#>>
#Then change back to your branch to rebase


alias gl='echo "// git log"; git log'
# git log // to see if your current changes match the remote

# // to see which commits are on your master which you haven't yet pushed
# git log origin/master..master
alias gld='echo "// git log diff b/w remote"; git log origin/master..master'

# // to see which commits are on origin/master but not yet on master

# git log master..origin/master

# // git log graph
alias glg='echo "// git log --graph --pretty=format:.."; git log --pretty=format:"%C(dim white)%d%C(reset) %s %C(dim white)[%h %ae %cr]%C(reset)" --graph'

alias glgraph='echo "// git log --graph"; git log --graph'

alias glgr='echo "// git log --graph --pretty=reference --relative-date"; git log --graph --pretty=reference --relative-date'
alias gl1='echo "// git log --graph --oneline"; git log --graph --oneline'


# // git log FILES to see which files were updated
alias glf='echo "// git log --name-only --oneline"; git log --name-only --oneline'

# // git log patches to see the diffs in each
alias glp='echo "// git log -p"; git log -p'
# // can add --author='Reinhardt' to see changes  by specific people
# // just another alias to make t easier to view changes
alias glshow='echo "// git log -p"; git log -p'

# // to reset to a previous commit but careful as you lose everything 
# git reset --hard <commit-ID || HEAD>

# // to revert a certain commit or the last commit on HEAD
# // the diff with reset is that this does the opposite of the given commit 
# // note: must use full hash that you can get from git log 
# git revert <commit-hash || HEAD>

#// to cherry pick a commit from another branch
# git cherry-pick <commmit-hash>



# TMUX
alias t='echo "// tmux <command>"; tmux '
alias tls='echo "// tmux ls"; tmux ls'
alias tns='echo "// sh ~/dotfiles/tmux-new-session.sh"; function foo(){ sh ~/dotfiles/tmux-new-session.sh $1; unset -f foo; }; foo'
alias tas='echo "// tmux attach-session -t <name>"; tmux attach-session -t '
alias trs='echo "// tmux rename-session -t <old-name> <new-name>"; tmux rename-session -t '
alias tkill='echo "// tmux kill-session -t <name>"; tmux kill-session -t '



# END OF FILE

