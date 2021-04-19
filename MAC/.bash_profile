# // show hidden files
# cmd + shift + .

# ITERM2
# // for optimal use have the terminal app transparent and blurred

# cmd+d // to vertically split a pane
# cmd+shift+d // to horizontally split a pane

# cmd+[ // to move between panes: one before
# cmd+] // to move between panes: one after
# cmd+w // to close a pane

# // to clear the command line
# ctrl+l


# modifying the bash prompt to something simpler
# PS1="\u@\W\$"
color_prompt=yes
if [ "$color_prompt" = yes ]; then
  PS1="\[\033[35m\]@\W\[\033[37m\]\$ "
else
  PS1="@\W\$ "
fi

# modifying 'ls' command to default display all directory info
alias ls='ls -aFG'
alias l='ls'
# -a for showing hidden files
# -F for files vs directories
# -G for colors



alias cdd='echo "cd ~/dotfiles"; cd ~/dotfiles'
alias cdD='echo "cd ~/Downloads"; cd ~/Downloads'
alias cdH='echo "cd ~/HigherMe"; cd ~/HigherMe'
# just making it easier to 
# go between docker setup & monorepo setup 
alias cdk='echo "cd ~/HigherMe/higherme-docker"; cd ~/HigherMe/higherme-docker'
alias cdj='cd ~/HigherMe/higherme-docker/sites/higherme/higherme-laravel-5/resources/assets/js
'
alias cdh='cd ~/HigherMe/higherme'
# // no longer have these directories after laptop reset
#alias cdh='cd ~/HigherMe/higherme-docker/sites/higherme'
#alias cdl='cd ~/HigherMe/higherme-docker/sites/highermeapi'
alias cdm='echo "cd ~/HigherMe/monorepo"; cd ~/HigherMe/monorepo'

alias cdr='cd /Users/reinhardtc/Downloads/0-cloud/0-learn-software/reinhardtcgr.github.io'

alias cdz='cd /Users/reinhardtc/Downloads/0-cloud/0-learn-software/zero-one'

# // open trash bin 
# $ open ~/.Trash/
# // empty trash bin
# cmd + shift + del

# get working directory
alias gwd='pwd |pbcopy'

# TODO: END CHECK IF ON MAC OS

# alias to open neovim quickly
alias n='nvim'
alias nv='nvim'





# GIT
alias g='git'

alias gb='git branch'
# TODO: CHECK IF MAC OS
alias gbc='git branch --show-current | pbcopy'
alias gbc='git branch --show-current | pbcopy'
# TODO END CHECK
# git branch -d <branch-name> // to delete local branch
# git branch -D <branch-name> // to force delete local branch

alias gc='git checkout'

alias ga='git add' 
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached' #// to see staged (added) changes (hunk)

#// to see a list of stashed patches
alias gslist='echo "// git stash list"; git stash list'
alias gsshow='echo "// git stash show -p"; git stash show -p'
# git stash show -p 3 // to see the #4 stashed patch/changes

# git show stash@{0} // to show tracked files stashed in index 0
# git show stash@{0}^3 // to show untracked files stashed in index 0

alias gspush='echo "// git stash push"; git stash push'
# git stash push -m "message" <path>
alias gsdrop='echo "// git stash drop <number>"; git stash drop '

alias gf='git fetch'
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


alias gl='git log'
# git log // to see if your current changes match the remote

# // to see which commits are on your master which you haven't yet pushed
# git log origin/master..master
alias gld='echo "// git log diff b/w remote"; git log origin/master..master'

# // to see which commits are on origin/master but not yet on master

# git log master..origin/master

# // git log graph
alias glg='git log --pretty=format:"%C(dim white)%d%C(reset) %s %C(dim white)[%h %ae %cr]%C(reset)" --graph'

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

alias t='tmux '
alias tls='tmux ls'
alias tns='sh ~/dotfiles/tmux-new-session.sh'
alias tas='tmux attach-session -t '
alias trs='tmux rename-session -t '


goDir='/usr/local/go/bin';
if [ -d $goDir ]; then
    PATH=$PATH:/usr/local/go/bin
    GOPATH=$(go env GOPATH)
    PATH=$PATH:$GOPATH/bin
fi

# // to install PHP 7.4 with HomeBrew
# $ brew install php@7.4

# // to change PHP versions
# $ php -v 
# // should have php 8.0.0 for this
# $ brew unlink php
# $ brew link php@7.4 --force
# $ php -v 
# // should have php 7.4 now set
 
# // to see PHP versions on HomeBrew
# $ brew list |grep php


# TODO: ADD CHECK IF path esists then add
# TODO CREATE LOOP OF THESE PATHS TO CHECK AND APPAEND
# Setting PATH for php@7.4 tools
PATH="/usr/local/opt/php@7.4/bin:${PATH}"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
# export PATH

# Setting PATH for pip related cli tools
PATH="/Users/reinhardtc/Library/Python/3.8/bin:${PATH}"
# export PATH


# Setting PATH for Julia cli tools
PATH="/Applications/Julia-1.4.app/Contents/Resources/julia/bin:${PATH}"
# export PATH

PATH="/Users/reinhardtc/istio-1.7.3/bin:${PATH}"

# HIGHERME docker setup
# CLI aliases
alias dp='docker ps'
alias dck='docker-compose up -d'
alias dcj='docker-compose down'
alias ds='docker stop '
alias dsn='docker stop higherme-node'
# alias hm='/Users/reinhardtc/HigherMe/monorepo/develop/assistant/hmcli'
alias hm='/Users/reinhardtc/HigherMe/assistant-cli/cli/hmcli'
alias hmcli='/Users/reinhardtc/HigherMe/assistant-cli/cli/hmcli'

# MONOREPO kubernetes setup
# spinning it up
# `k3d start cluster`
# `yarn run down`
# `yarn run dev`

# alias for kubectl to make it easier to remember
alias k='kubectl'
# easier to do `kubectl get pods` && `kubectl delete pod <name>`
# 1> usually the invalid response from upstream is when the pod is crashing and cant start up
# 2> if the service isnt outputting logs, just reboot it
# (sometime tilt just doesnt recognize the pods after a reboot and it can't capture the logs)

alias kssh='kubectl exec --stdin --tty '

# HigherMe Monorepo Path
MONOREPO_PATH='/Users/reinhardtc/HigherMe/monorepo'

export MONOREPO_PATH="$MONOREPO_PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig:"${PKG_CONFIG_PATH}""


export KUBECONFIG="$(k3d get-kubeconfig --name=k3s-default)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export FZF_DEFAULT_COMMAND='rg --files --hidden'
# note `$ brew install bat` created syntax highlights in preview

export NODE_OPTIONS=--max_old_space_size=4096

# // for GIT auto completion
# // note need to run the following first
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then 
    . ~/.git-completion.bash
fi


# // note: done for bash completion v2
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# // docker CLI completion doesn't seem to work
# // main docker compose eh

# // kubectl CLI completion doesn't seem to work either
# // for kubectl bash completion
source <(kubectl completion bash)
complete -F __start_kubectl k

# END OF FILE

