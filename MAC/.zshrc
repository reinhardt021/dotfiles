# SHELL SETUP

# // how to check the shell you are using
# $ echo $SHELL

# // to change the shell
# $ chsh -s /bin/zsh
# or
# $ chsh -s /bin/bash

# // to see the cpu cores on MAC
# $ sysctl hw.physicalcpu hw.logicalcpu

# // show hidden files
# cmd + shift + .

# SSH
# # // NOTE: We can just use the ~/.ssh/config as a shortcut to ssh into servers
# $ ssh <Host>
# // you will then be asked either for the username and password or the ssh passphrase
# // to copy a file from the server to your local
# $ scp <username>@<IPorHostName>:/remote/path/to/file ./loca/path/to/file

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
  #PS1="\[\033[35m\]@\W\[\033[37m\]\$ " # // for bash
  #\[ is to begin a sequence of non-printing characters
  #\033 is an ASCII escape character (aka \e)
  #35 is foreground purple
  #37 is foreground white
  #m is used to set the sequence
  #\] is to end a sequence of non-printing characters
  #\W is the basename of the current working directory
  PS1="%F{5}@%. %f%F{15}$ " # // zsh
  # %F is foreground color start
  # %f is foreground color end
  # 5 is purple
  # %. is basename of the current working directory
  # 15 is white
else
  #PS1="@\W\$ " # // bash
  PS1="@%. $ " # // zsh
fi

# modifying 'ls' command to default display all directory info
alias ls='ls -aFG'
alias l='ls'
# -a for showing hidden files
# -F for files vs directories
# -G for colors
#export LSCOLORS=exfxcxdxbxegedabagacad # default ls colors
export LSCOLORS=Hxfxcxdxbxegedabagacad # default ls colors to have directories as bold light grey

#// alias to always prompt before overwriting and to be verbose"
alias mv='mv -iv '

# open -a /Applications/VLC.app ./movie.mkv
# to open the file with a certain application

# to see the volumes mounted
# diskutil list
# to umount a volume that is partitioned
# diskutil unmountDrive /dev/disk2

alias cdd='echo "// cd ~/dotfiles"; cd ~/dotfiles'
alias cdD='echo "// cd ~/Downloads"; cd ~/Downloads'
alias cdH='echo "// cd ~/HigherMe"; cd ~/HigherMe'
alias cdO='echo "// cd ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/OBSIDIAN"; cd ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/OBSIDIAN'
# just making it easier to 
# go between docker setup & monorepo setup 
alias cdk='echo "// cd ~/HigherMe/higherme-docker"; cd ~/HigherMe/higherme-docker'
alias cdj='cd ~/HigherMe/higherme-docker/sites/higherme/higherme-laravel-5/resources/assets/js
'
#alias cdh='cd ~/HigherMe/higherme'
# // no longer have these directories after laptop reset
#alias cdh='cd ~/HigherMe/higherme-docker/sites/higherme'
#alias cdl='cd ~/HigherMe/higherme-docker/sites/highermeapi'
#alias cdm='echo "// cd ~/HigherMe/monorepo"; cd ~/HigherMe/monorepo'

#alias cdr='cd /Users/reinhardtc/Downloads/0-cloud/0-learn-software/reinhardtcgr.github.io'
#alias cdz='cd /Users/reinhardtc/Downloads/0-cloud/0-learn-software/zero-one'

# // open trash bin 
# $ open ~/.Trash/
alias otrash='open ~/.Trash/'
# // empty trash bin
# cmd + shift + del

# get working directory
alias gwd='echo "// pwd |pbcopy"; pwd |pbcopy'

# TODO: END CHECK IF ON MAC OS

# alias to open neovim quickly
alias n='echo "// nvim <command>"; nvim'
alias nv='echo "// nvim <command>"; nvim'

# GIT
alias g='echo "// git <command>"; git'
alias gb='echo "// git branch"; git branch'
# TODO: CHECK IF MAC OS
alias gbc='echo "// git branch --show-current | pbcopy"; git branch --show-current | pbcopy'
# TODO END CHECK

# git branch -d <branch-name> // to delete local branch
# git branch -D <branch-name> // to force delete local branch

# // to delete the remote branch (merged or unmerged)
# git push <remote> --delete <branch-name>
# example:
# git push origin --delete <branch-name>

alias gc='echo "// git checkout <branch>"; git checkout'

alias gf='echo "// git fetch"; git fetch'
# // to rebase from the remote branch
# git fetch
# git rebase origin/master

alias gpull='echo "// git pull <branch>"; git pull'
alias gpush='echo "// git push <branch>"; git push'
alias gpom='echo "// git push origin main"; git push origin main'

alias gs='echo "// git status"; git status'
alias gd='echo "// git diff";git diff'
alias gdc='echo "// git diff --cached"; git diff --cached' #// to see staged (added) changes (hunk)

alias ga='echo "// git add <files>"; git add ' 
alias grs='echo "// git restore --staged <files> to UNSTAGE"; git restore --staged ' 

alias gcm='echo "// git commit -m <text>"; git commit -m ' 

#// to push changes into the stash
alias gspush='echo "// git stash push"; git stash push'
#// to push even untracked changes
# git stash push --include-untracked <file>

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
# // NOTE: should NOT have the file open in vim when rebasing
# // change the 'pick' to 'reword' (or some other command like squash) then :wq
# // once new editor opened you can make the new changes
# // To push up the changes
# git push --force origin feature/COR-7412-edocs-re-write-create-feature-switch

### Rebase your branch to resolve merge conflicts 
#&& to consolidate your changes on top of the branch you want to merge into
#"git rebase feature/DEP-118"
#>>
#Make sure your local has all the latest changes of the destination branch (ex: DEP-118) 
#>>
#Then change back to your branch to rebase

# git log // to see if your current changes match the remote
alias gl='echo "// git log"; git log'
alias glog='echo "// git log"; git log'

# // to see which commits are on your master which you haven't yet pushed
# git log origin/master..master
alias gld='echo "// git log diff on local not remote"; git log origin/main..main'

# // to see which commits are on origin/master (remote) but not yet on master (local)
# git log master..origin/master
alias glr='echo "// git log diff on remote not local"; git log main..origin/main'

# // git log GRAPH
alias glg='echo "// git log --graph --format=.."; git log --format="%C(dim white)%d%C(reset) %s %C(dim white)[%ae %h %cr]%C(reset)" --graph'
alias glgraph='echo "// git log --graph"; git log --graph'

#@monorepo$ watch -n 5 'git log --format="%C(dim white)%d%C(reset) %s %C(dim white)[%ae %h %cr]%C(reset)" --graph'
# // to limit the amount of commits shown use the following:
# $ glg -<number of commits>
# OR
# $ glg -n <number of commits>

# // git log FILES to see which files were updated
alias glf='echo "// git log --name-only --oneline"; git log --name-only --oneline'

# // git log PATCHES to see the diffs in each
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

# GIT CHANGE REMOTE 
# git remote set-url <remote-name> <ssh-remote-url>
# git remote set-url origin git@github.com:reinhardt021/x-spotify.git


# TMUX
alias t='echo "// tmux <command>"; tmux '
alias tls='echo "// tmux ls"; tmux ls'
alias tns='echo "// sh ~/dotfiles/tmux-new-session.sh"; function foo(){ sh ~/dotfiles/tmux-new-session.sh $1; unset -f foo; }; foo'
alias tas='echo "// tmux attach-session -t <name>"; tmux attach-session -t '
alias trs='echo "// tmux rename-session -t <old-name> <new-name>"; tmux rename-session -t '
alias tkill='echo "// tmux kill-session -t <name>"; tmux kill-session -t '


# WATCH
alias wn='echo "// watch -n <secs-delay> <command+params>"; watch -n '


# MYSQL
#-- // to run mysql on mac
#-- $ brew services start mysql
#
#-- // to run commands in mysql from CLI 
#-- $ mysql -h 127.0.0.1 -P 3306 -u root -p higherme -e "SHOW DATABASES;"

#-- // Database creation
#-- mysql> CREATE DATABASE <database_name>;
#-- // to see users aka roles
#-- mysql> SELECT user FROM mysql.user;
#-- // to create the needed users to create the database
#-- mysql> CREATE user <username>@<host> identified by '<password>';
#-- mysql> CREATE user <username>@localhost identified by '<password>';
#-- // to see user priviledges
#-- mysql> SELECT * FROM mysql.user;
#-- // might also be good to check table columns with the DESCRIBE so we can pinpoint parts
#-- // to see current user
#-- mysql> SELECT user();
#-- mysql> SELECT current_user();

#-- // to list all the databases
#-- mysql> SHOW DATABASES;
#-- // to change the database
#-- mysql> USE <database_name>;

#-- // to see all the tables in the database
#-- mysql> SHOW TABLES;

#-- // to see table columns names and other data
#-- mysql> DESCRIBE <database(optional)>.<table>;
#-- mysql> DESCRIBE users;

#SELECT *
#FROM users u
#WHERE u.email LIKE 'reinhardt%'
#LIMIT 200
#;

#-- // to run .sql in mysql from CLI
#-- $ mysql -h <host> -P <port> -u <username> -p <database> < path/to/file.sql
#-- // example:
#-- $ mysql -h 127.0.0.1 -P 3306 -u root -p higherme < ./queries/cli-db-queries.sql
#-- $ mysql -h localhost -P 3306 -u innoiapa_green -p audiome_db < /Users/reinhardtc/Downloads/AUDIO-ME/audiome_db.sql


# POSTGRESQL
#// to run commands in postgres from CLI 
#$ psql -U <user-name> -d <database-name> -c "<command>"
#// example (list databases):
#$ psql -U surveycraft -d SurveyCraft_development -c "\l+"

#$ psql postgres

# // to see users aka roles
# `\du`  or `\du+` to see more information
# // to create the needed users to create the database
# `CREATE ROLE surveycraft WITH createdb login password '<password>';`
# // to login with the new role just get out of psql and log back in
# $ psql postgres -U <new_role>

# // to list all the databases
# `\l` or `\l+` to see more information
# // to change the database
# `\c <database_name>`
# // to create database
# CREATE DATABASE <database_name>;

# // to see all the tables in the database
# `\dt` OR `\dt+` to see more information
# // to see table column names
# `SELECT column_name FROM information_schema.columns WHERE table_name = '<table>';`

# SELECT * FROM "<table>":

# // insert example
# INSERT INTO "<table>" (col1, col2, ...) VALUES (val1, 'val2', ...), (valA, valB, ...);
# note: single quote for values and double for table name

#// to run .sql in postgres from CLI
#$ psql -U <user-name> -d <database-name> -f <file-path>
#// example:
#$ psql -U surveycraft -d SurveyCraft_development -f cli-db-queries.sql


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
#PATH="/usr/local/opt/php@7.4/bin:${PATH}"
# PATH for php@8.0
PATH="/usr/local/opt/php@8.0/bin:${PATH}"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"

# Setting PATH for pip related cli tools
PATH="/Users/reinhardtc/Library/Python/3.8/bin:${PATH}"

# Setting PATH for Julia cli tools
PATH="/Applications/Julia-1.4.app/Contents/Resources/julia/bin:${PATH}"

PATH="/Users/reinhardtc/istio-1.7.3/bin:${PATH}"

# Docker-Machine aliases
#alias dm='echo "// docker-machine <command>": docker-machine '
# // this doesn't work for `docker-machine ls`  bc of the alias for ls

# HIGHERME docker setup
# CLI aliases
alias dp='echo "// docker ps";docker ps'
#alias dck='docker-compose up -d'
#alias dcj='docker-compose down'
alias ds='echo "// docker stop <container>"; docker stop '
#alias dsn='docker stop higherme-node'
# alias hm='/Users/reinhardtc/HigherMe/monorepo/develop/assistant/hmcli'
alias hm='/Users/reinhardtc/HigherMe/assistant-cli/cli/hmcli'
alias hmcli='/Users/reinhardtc/HigherMe/assistant-cli/cli/hmcli'

# MONOREPO kubernetes setup
# spinning it up
# `k3d start cluster`
# `yarn run down`
# `yarn run dev`

# alias for kubectl to make it easier to remember
alias k='echo "// kubectl <command>"; kubectl'
# easier to do `kubectl get pods` && `kubectl delete pod <name>`
# 1> usually the invalid response from upstream is when the pod is crashing and cant start up
# 2> if the service isnt outputting logs, just reboot it
# (sometime tilt just doesnt recognize the pods after a reboot and it can't capture the logs)

alias kpods='echo "// kubectl get pod -o custom-columns=NAME:.metadata.name |grep "; kubectl get pod -o custom-columns=NAME:.metadata.name |grep '
alias klog='echo "// kubectl logs -f --tail=10 <podname>"; kubectl logs -f --tail=10 '
alias klogs='echo "// kubectl logs -f --tail=10 <podname>"; kubectl logs -f --tail=10 '
alias kssh='echo "// kubectl exec --stdin --tty <podname> -- <shell command>"; kubectl exec --stdin --tty '
alias kc='echo "// kubectl config <command>"; kubectl config '
alias kcuc='echo "// kubectl config use-context <context>"; kubectl config use-context '
alias kcucdefault='echo "// kubectl config use-context k3s-default"; kubectl config use-context k3s-default'

# HigherMe Monorepo Path
MONOREPO_PATH='/Users/reinhardtc/HigherMe/monorepo'

# // this is for homebrew gcc >> don't need anymore should use Xcode CLT
#PATH="/usr/local/Cellar/gcc/11.2.0/bin:${PATH}"
PATH="/Applications/Xcode.app/Contents/Developer/usr/bin:${PATH}"
PATH="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:${PATH}"
PATH="/usr/bin:${PATH}"

export MONOREPO_PATH="$MONOREPO_PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig:"${PKG_CONFIG_PATH}""

# // for kubernetes setup need to run this
#export KUBECONFIG="$(k3d get-kubeconfig --name=k3s-default)"
# EXAMPLE:
export KUBECONFIG="/Users/reinhardtc/.config/k3d/k3s-default/kubeconfig.yaml"

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export FZF_DEFAULT_COMMAND='rg --files --hidden --heading'
# note `$ brew install bat` created syntax highlights in preview

export NODE_OPTIONS=--max_old_space_size=4096

# // for GIT auto completion
# // note need to run the following first
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
#if [ -f ~/.git-completion.bash ]; then 
    #. ~/.git-completion.bash
#fi
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -o ~/.git-completion.zsh
if [ -f ~/.git-completion.zsh ]; then 
    . ~/.git-completion.zsh
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
#source <(kubectl completion bash)
#complete -F __start_kubectl k
#// turned off for now since not using kubernetes locally


#PHP LINES OF CODE for quick check on size and analyzing structure of php project
#$ wget https://phar.phpunit.de/phploc.phar
#$ php phploc.phar --version
#$ php phploc.phar services/classic/app/

#PHP Copy Paste Detector for duplicate lines of code
#$ wget https://phar.phpunit.de/phpcpd.phar
#$ php phpcpd.phar --version
#$ php phpcpd.phar services/classic/app/

#PHP CODE SNIFFER
#The default coding standard used by PHP_CodeSniffer is the PEAR coding standard
#$ phpcs --standard=PSR12 /path/to/code-directory
#$ wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
#$ php phpcs.phar -h
#$ php phpcs.phar services/classic/app/Classes/AccessComputers/

export CODECOV_TOKEN="3da7afe8-0804-45ef-936e-2a0969bbeee3"


# END OF FILE

#. "$HOME/.cargo/env"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

alias sail='echo "// trying sail command else use vendor"; [ -f sail ] && sh sail || sh vendor/bin/sail'

