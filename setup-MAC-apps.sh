# INSTALL APPs
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
    # Preferences > Profiles > Window > Blur # // adjust bg blur
    # Preferences > Profiles > Colors > Color Presets > Pastel (Dark Background)
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

# discord
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
# brew install --cask postman #// api development

# DATABASE CLIENT
# brew install --cask dbeaver-community
# brew install --cask sequel-pro

# GIT CLIENT
# // use tmux panes instead
# brew install --cask fork #// optional backup git client
    # SourceTree #// no need as well

# LOCAL DEV ENVIRONMENT BUILD
# TODO: install git hub?
# // TODO: have different users setup on github
# TODO: save DB configs (DBeaver / Sequel Pro)
# TODO: save Postman configs

#docker through CLI not docker desktop
# TODO: install kubernetes for the build and things
# TODO: install istio
# TODO: install helm
# TODO: install tilt
# TODO: install k3d
# TODO: install sandboxfs

# VIDEO CLIENT
# // install Zoom (video communication platform) through calendar event
# Skype #// not really necessary I feel



# OPEN APPs

## PERSONAL
open -a Evernote
open -a Firefox

## DEV CRAFT
open -a iTerm
open -a "Google Chrome"
open -a "Sequel Pro"
open -a Postman


