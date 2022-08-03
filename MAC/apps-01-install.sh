# INSTALL APPLICATIONS
# note: these all will live in /Applications not the user specific one

## PERSONAL 

# []- install Magnet from App Store #// for screen partitioning
# []- install Firefox from Safari
    # Manage Extensions > Settings > Auto Tab Discard > Discard Tab: cmd + shift + space
# []- install Brave (chromium) from Safari
# SETUP browsers
    # []- login to both browsers to sync the tabs
    # []- login to raindrop.io on both browsers to sync the bookmarks accross devices / browsers
    # []- login to gmail (brave)
    # []- login to protonmail (firefox)
    # []- login to zoho for creds // firefox only
    # []- add extension: bitwarden // both
    # []- login to BITWARDEN for creds // both
    # []- add extension: pocket // both
    # []- add extension: auto tab discard // both
    # []- add extension: momentum // both
    # []- add extension: rescuetime // both
    # []- add extension: vimium // both
    # []- add extension: honey // both
    # []- add extension: colorzilla // both
    # []- add extension: tubebuddy // both
    # []- add extension: adblock plus - free ad blocker // both
    # []- add extension: cookie autodelete // both
    # []- add extension: disconnect // both
    # []- change default search to duck duck go // both

# save .ssh/ FILES to a USB stick <> onto computer
    # save .ssh/config to a USB stick <> onto computer
# copy .ssh files

# // MULTIPLE SSH KEY SETUP
#// might be able to find copy of .ssh/ folder in one of your USBs to bypass all this

#$ ssh-keygen -t ed25519 -C "<your@email.com>"
# // you will get the following prompt:
# Generating public/private ed25519 key pair.
# Enter file in which to save the key (/home/user/.ssh/id_ed25519):
# // you then enter the /path/to/new/file/custom_file_name
# // example: ~/.ssh/id_ed25519_custom
# // then you must enter a passphrase
# Enter passphrase (empty for no passphrase):
# Enter same passphrase again:
# // then you update the ~/.ssh/config file to include the new ssh-key
#example:
#Host github-hm
    #HostName github.com
    #User git
    #IdentityFile ~/.ssh/id_ed25519_custom
    #IdentitiesOnly yes

# // add the ssh key to gitlab or github
# // note: I usually name it <device-name> <email> <date> 
# // example: MBP reinhardt.cgr@gmail.com 202101026
# // clone the repo now
#git clone @github-hm:user-name/project-repo.git

# // CLONE DOTFILES into home/root directory ~ || /Users/reinhardtc
# git clone git@github.com:reinhardt021/dotfiles.git
# // can also set to specific ssh config
# git clone git@github-personal:reinhardt021/dotfiles.git

# // to change remote after the fact
# git remote set-url origin git@github-personal:reinhardt021/dotfiles.git
# git remote -v 

# // fix global git username and email for personal commits
# git config --global user.name "Reinhardt"
# git config --global user.email reinhardt.cgr@gmail.com
# // if you need to reset a recent comment then run the following:
# git commit --amend --reset=author

#// []- install HOMEBREW:
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#// []- install ExpressVPN from website + login
#// https://www.expressvpn.com/latest?utm_source=mac_app

#// []- install f.lux from website (command doesn't work)
#$ brew install --cask flux #// screen color temperature 

#// []- have screenshots moved to the Downloads folder; note: absolute path not relative
#$ mkdir ~/Downloads/SCREENSHOTS
#$ defaults write com.apple.screencapture location /Users/reinhardtc/Downloads/SCREENSHOTS

#// []- make the Notifications shortcut cmd + shift + =
# System Preferences > Keyboard > Shortcuts > Mission Control > Show Notification Center 

# []- brew install --cask caffeine #// prevents system from going to sleep
# []- brew install --cask rescuetime #// time optimizing application
    # // login to turn it on for system and firefox

# // install ITERM(2)
#  []- brew install --cask iterm2
    #  []- Preferences > Appearances > General > Theme > Minimal # // adjust to minimal
    #  []- Preferences > Profiles > Window > Transparencey # // adjust bg transparency
        # 1/6 = (1/3 * 1/2)
    #  []- Preferences > Profiles > Window > Blur # // adjust bg blur
        # 25%
    #  []- Preferences > Profiles > Colors > Color Presets > Pastel (Dark Background)
    #  []- Preferences > Profiles > Colors > Minimum Contrast: 50%
    #  []- Preferences > Profiles > Colors > Cursor Boost: 25%
    #  []- Preferences > Profiles > Colors > Cursor Colors > Cursor: 50% Gray
    # // disable mouse reporting
    #  []- Preferences > Profiles > Terminal > Enable Mouse Reporting: NO / disabled / unchecked
    # // how to scroll tmux and vim without scrolling window
    #  []- Preferences > Advanced > Mouse > Scroll wheel sends arrow keys when in alternate screen mode: YES
    # TODO: export these configs

# // for better SSH when on mobile or just for spotty connections
#  []- brew install mosh

#  []- brew install tmux
#  []- brew install neovim
# //  []- configure all with the setup-config-MAC.sh
    # chsh -s /bin/bash #// change default shell to bash
#  []- brew install ripgrep # // used for fzf.vim
#  []- brew install bat # // used for fzf.vim preview 

#  []- brew install tree # // to show directory tree
#  []- brew install watch # // to run shell to repeatedly run a cmd 
# watch -n 10 <command + arguments> # // watches every 10 seconds

# // restart iTerm to get new changes

#  []- brew install bash  # // to get latest bash
#// may need to update this to setup zsh
#  []- exec bash # // reload bash
#  []- bash --version # // verify update

# // []- GIT auto completion
# // note need to run the following first
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash


#  []- brew install --cask evernote
    # Note > Note Width > Optimize for Readability
# Ommwriter #// disk image in dropbox or through APP STORE
# Ommbits #// disk image in dropbox or through APP STORE
#  []- install NOTION
# Notion #// not until they have offline feature .. w/e super helpful anyway

# brew install --cask calibre #// e-books management software (optional)

# install discord // just use browser
# brew install --cask vlc #// video/audio playback (optional)
# []- brew install --cask signal #// messaging app focusing on security
# []- brew install --cask obs #// streaming
# brew install --cask qbittorrent (optional)


## DEV CRAFT 

# []- xcode-select --install #// Command Line Tools
# // []- install XCODE 12 client as well from website
# []- VirtualBox #// possibly for dev work

# brew install --cask visual-studio-code #// optional backup IDE
    # PHPStorm #// no longer needed as using VIM

# GIT CLIENT (optional)
# // use tmux panes instead
# brew install --cask fork #// optional backup git client
    # SourceTree #// no need as well

# PROJECT BUILD: LOCAL DEV ENVIRONMENT
# // copy .ssh/ from backup USB
# // have different users setup on github >> see ~/.ssh/config

# // pull from remote repository with the specified ssh config
# git clone git@github-hm:higher-me/monorepo.git
    # git fetch
    # git branch -a # // get all branches shown
    # git checkout <remote branch name>

# // fix git config for project: username and email for commits
# git config --local user.name "Reinhardt Cagara"
# git config --local user.email reinhardt@higherme.com

# DATABASE CLIENT (optional as using command line now)
# brew install --cask dbeaver-community
# brew install --cask sequel-pro
    # import DB configs (DBeaver / Sequel Pro)
    # copy the following file over from USB
    # /Users/${USER}/Library/DBeaverData/workspace6/General/.dbeaver/
    # Sequel Pro > settings (bottom left gear) > import (plist file)
    # use environment variables on AWS S3 higherme.environment

# brew install --cask postman #// api development
    # // just log in and it will all be there Collection + env vars
    # save Postman configs >> might not need this if saved to account
    # optional as using httpie in commandline now
    
# install openssl for .bash_profile requirements and php@7.4 dependency
# brew install openssl
# []- investigate if this is still needed

# install PHP 7.4 
# // current mac default is 7.3
# brew install php@7.4
# // link php 7.4
# php -v # // should show old version
# brew unlink php # // will error if old php didn't use homebrew
# brewk link --overwrite --force php@7.4
# php -v 

# install COMPOSER
# php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
# php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
# php composer-setup.php --version=1.10.20
# php -r "unlink('composer-setup.php');"
# // move composer to use globally
# mv ./composer.phar /usr/local/bin/composer

# // install KUBERNETES CLI for the build and things
# brew install kubectl
# kubectl version --client # // to check install worked
# // install istio >> check if still necessary // yeah no longer needed
# brew install helm
# helm version # // to check install worked
# helm repo add # // check .ssh folder for those details

# // install DOCKER
    # // required for TILT
    # // try through CLI not docker desktop >> complicated will just do desktop for now
    # // install through website
# // install TILT from website
# tilt verison # // to check install worked
# // install K3D 
# wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | TAG=v1.7.0 bash
     # // may need to install wget first
     # brew install wget
     # k3d -v # // to check install worked
# // install SANDBOXFS >> check if still needed

# HIGHERME WORK SETUP (use the gitlab wiki)
# // may need to install YARN
    # brew install yarn
    # yarn -v # // check install worked
# // may need to install BAZEL
    # brew install bazel
    # bazel --version # // check install worked
# // will need AWS to build and setup 
    # go through the installer from the website >> simplest way
    # aws --version # // check install worked
    # which aws

# VIDEO CLIENT
# // []- install Zoom zoom ZOOM (video communication platform) through calendar event
# Skype #// not really necessary I feel

# // optional install of LOOM for screen recording

# []- INSTALL XCode
# []- INSTALL ANDROID STUDIO
# INSTALL GENYMOTION (optional - haven't used it recently)

# []- INSTALL HP Easy Start to use the HP Deskjet 2131 (print scan copy)

# OPEN APPLICATIONS

## DEV CRAFT
# open -a "Brave"
# open -a iTerm
# open -a Postman (deprecated)
# open -a Firefox

## PERSONAL
# open -a Evernote (deprecated)
# open -a Notion
# open -a Firefox

# LINK Apple Calendar to Google Calendar
# so can have offline information

