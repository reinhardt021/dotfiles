# INSTALL APPLICATIONS
# note: these all will live in /Applications not the user specific one

## PERSONAL 

# install Magnet from App Store #// for screen partitioning
# install Firefox from Safari
    # Manage Extensions > Settings > Auto Tab Discard > Discard Tab: cmd + shift + space
# install Chrome from Safari
# SETUP browsers
    # login to both browsers to sync the tabs
    # login to gmail 
    # login to zoho for creds // firefox only
    # change default search to duck duck go // both

# save .ssh/ FILES to a USB stick <> onto computer
    # save .ssh/config to a USB stick <> onto computer
# copy .ssh files
# // git clone dotfiles/ into home directory ~ || /Users/reinhardtc
# git clone git@github.com:reinhardtcgr/dotfiles.git
# // fix global git username and email for personal commits
# git config --global user.name "Reinhardt"
# git config --global user.email reinhardt.cgr@gmail.com
# // if you need to reset a recent comment then run the following:
# git commit --amend --reset=author

# // install HOMEBREW:
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# // install ExpressVPN from website + login
# // install f.lux from website (command doesn't work)
    # brew install --cask flux #// screen color temperature 
# // have screenshots moved to the Downloads folder; note: absolute path
    # defaults write com.apple.screencapture location /Users/reinhardtc/Downloads
# // make the Notifications shortcut cmd + shift + =
    # System Preferences > Keyboard > Shortcuts > Mission Control > Show Notification Center 

#brew install --cask caffeine #// prevents system from going to sleep
#brew install --cask rescuetime #// time optimizing application
    # // login to turn it on for system and firefox

# // install ITERM(2)
# brew install --cask iterm2
    # Preferences > Appearances > General > Theme > Minimal # // adjust to minimal
    # Preferences > Profiles > Window > Transparencey # // adjust bg transparency
        # 1/6 = (1/3 * 1/2)
    # Preferences > Profiles > Window > Blur # // adjust bg blur
        # 25%
    # Preferences > Profiles > Colors > Color Presets > Pastel (Dark Background)
    # Preferences > Profiles > Colors > Minimum Contrast: 50%
    # Preferences > Profiles > Colors > Cursor Boost: 25%
    # Preferences > Profiles > Colors > Cursor Colors > Cursor: 50% Gray
    # TODO: export these configs
# brew install tmux
# brew install neovim
# configure all with the setup-config-MAC.sh
    # chsh -s /bin/bash #// change default shell to bash
# restart iTerm to get new changes

# brew install --cask evernote
    # Note > Note Width > Optimize for Readability
# Ommwriter #// disk image in dropbox

# brew install --cask calibre #// e-books management software
# Notion #// not until they have offline feature

# install discord
# brew install --cask vlc #// video/audio playback
# brew install --cask signal #// messaging app focusing on security
# brew install --cask obs #// streaming
# qBittorrent


## DEV CRAFT 

#xcode-select --install #// Command Line Tools
# // install XCODE 12 client as well from website
#VirtualBox #// possibly for dev work

# brew install --cask visual-studio-code #// optional backup IDE
    # PHPStorm #// no longer needed

# GIT CLIENT
# // use tmux panes instead
# brew install --cask fork #// optional backup git client
    # SourceTree #// no need as well

# PROJECT BUILD: LOCAL DEV ENVIRONMENT
# // have different users setup on github >> see ~/.ssh/config
# // pull from remote repository with the specified ssh config
# git clone git@github-hm:higher-me/monorepo.git
    # git fetch
    # git branch -a # // get all branches shown
    # git checkout <remote branch name>

# // fix git config for project: username and email for commits
# git config --local user.name "Reinhardt Cagara"
# git config --local user.email reinhardt@higherme.com

# DATABASE CLIENT
# brew install --cask dbeaver-community
# brew install --cask sequel-pro
    # import DB configs (DBeaver / Sequel Pro)
    # copy the following file over from USB
    # /Users/${USER}/Library/DBeaverData/workspace6/General/.dbeaver/
    # Sequel Pro > settings (bottom left gear) > import (plist file)
# TODO: double check that you have AWS access with new laptop

# brew install --cask postman #// api development
    # // just log in and it will all be there Collection + env vars
    # save Postman configs >> might not need this if saved to account

# install PHP 7.4 # // current mac default is 7.3
# brew install php@7.4

# install DOCKER: through CLI not docker desktop
# install kubernetes for the build and things
# install istio
# install helm
# install tilt
# install k3d
# install sandboxfs

# VIDEO CLIENT
# // install Zoom (video communication platform) through calendar event
# Skype #// not really necessary I feel


# OPEN APPLICATIONS

## PERSONAL
open -a Evernote
open -a Firefox

## DEV CRAFT
open -a iTerm
open -a "Google Chrome"
open -a "Sequel Pro"
open -a Postman


