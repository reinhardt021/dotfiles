# MACBOOK SETUP
# approx 2.75 hrs
# // ca. MacOS Ventura 13.4.1

# []- Authorize Apple ID // iCloud sync and for access to TV / Notes / ...
# []- turn ON FileVault // file encryption


# SYSTEM SETTINGS
# []- change background (Desktop & ScreenSaver) to adaptive landscape // for light & dark modes) 
# []- change all active notifactions to banner & no sound no badges (Notifications & Focus) // so they show but are then hidden

# SYSTEM SETTINGS > DESKTOP & DOCK
# []- Desktop & Dock: Automatically rearrange Spaces based on most recent use=OFF
# []- remove all apps from the dock
# []- DOCK: Show recent applications in Dock=OFF
# []- DOCK: Automatically hide and show the Dock=ON
# []- MENU: Automatically hide and show the menu bar=ALWAYS
# []- MISSION CONTROL: Automatically rearrange Spaces based on most recent use=OFF
# SYSTEM SETTINGS > CONTROL CENTER
# []- MODULES: Display = Don't Show in Menu Bar
# []- MODULES: Battery = Show in Menu Bar=ON; Show Percentage=ON
# []- Menu Bar Only: Clock = Show date When Space Allows; Use 24hour clock=ON; Display the time with seconds=ON
# []- Menu Bar Only: Spotlight = Don't Show in Menu Bar
# []- Menu Bar Only: Time Machine = Show in Menu Bar
# []- Shortcuts... : Show Desktop = '-'

# SYSTEM SETTINGS > BATTERY
# []- Low power mode=ALWAYS
# []- Battery: Enable Power Nap while on battery power
# []- Power Adapter: Low power mode
# []- Power Adapter: Prevent your Mac from automatically sleeping when the display is off

# SYSTEM SETTINGS > GENERAL
# []- Date & Time: 24-Hour Time=ON

# SYSTEM SETTINGS > KEYBOARD > KEYBOARD SHORTCUTS
# []- Keyboard Shortcuts > Mission Control > Show Notification Center = cmd+shift+= 
# []- Keyboard Shortcuts > Launchpad & Dock > Show Launchpad = cmd+shift+- 

# NOTIFICATION CENTER
# []- Clock Widget: show times of 4 cities relevant to you

# SYSTEM SETTINGS > TRACKPAD
# []- Point & Click > Lookup & Data Detectors='Tap with three fingers'
#   // disable Lookup for 'force' mouse click
# []- change default swipes for moving back and forth
# // More Gestures > Swipe Between pages='Swipe with three fingers'
# // More Gestures > Swipe Between full-screen applications='Swipe Left or Right with four fingers'
# // More Gestures > Mission Control='Swipe up with four fingers'
# // More Gestures > App Expose='Swipe up with four fingers'

# SYSTEM SETTINGS > KEYBOARD > DICTATION
# []- Shortcut='Press Fn (Function) Key Twice'(has dedicated key now)

# FINDER SETTINGS
# []- GENERAL: New Finder Windows show=Downloads
# []- SIDEBAR: Recents=OFF
# []- Sidebar: Documents=OFF
# []- ADVANCED: Show all filename extensions=ON
# []- show all hidden files: cmd + shift + .


# // INSTALL PERSONAL applications
# // note: these all will live in /Applications not the user specific one

# APP STORE
# []- Magnet // for screen partitioning
# []- OmmWriter // for writing
# []- XCode // for iOS App development

# BROWSER downloads (not app store)
# []- Brave (chromium) from Safari (primary browser)
# []- Firefox from Safari (optional secondary browser)
# // SETUP browsers
    # []- add extension: bitwarden // both
    # []- login to BITWARDEN for creds // both
    # []- login to zoho sheets for creds // firefox only
    # []- login to both browsers to sync the tabs
    # []- login to raindrop.io // on both browsers to sync the bookmarks accross devices / browsers
    # []- login to gmail (brave)
    # []- login to protonmail (firefox)
    # []- login to spotify // for focus sessions - https://open.spotify.com/
    # []- add extension: bitwarden // both
    # []- add extension: auto tab discard // both
    # []- set hotkey keyboard shortcut for discarding tab:
	    # brave://extensions/shortcuts => Auto Tab Discard > Discard Tab set: cmd + shift + space
	    # Firefox: Manage Extensions > Settings > Auto Tab Discard > Discard Tab: cmd + shift + space
    # []- add extension: raindrop // both
    # []- add extension: pocket // both
    # []- add extension: momentum // both
    # []- add extension: rescuetime // both
    # []- add extension: vimium // both
        # []- vimium options >> Custom key mappings: 
        #   # Insert your preferred key mappings here.
        #   unmap x
        #   unmap X
        #   map q removeTab
        #   map Q restoreTab
    # []- add extension: honey // both
    # []- add extension: colorzilla // both
    # []- add extension: tubebuddy // both
    # []- add extension: adblock plus - free ad blocker // both
    # []- add extension: cookie autodelete // both
    # []- add extension: disconnect // both
    # []- change default search to duck duck go // both

# []- install ExpressVPN // to protect internet traffic - https://www.expressvpn.com/latest?utm_source=mac_app
    # []- Preferences > Advanced > Appearance: Show ExpressVPN icon in Menu Bar only 
# []- install f.lux // for less blue light at night [brew install --cask flux - brew command doesn't work]

# []- install NOTION // not until they have offline feature .. w/e super helpful anyway
# []- install Ommwriter // disk image in dropbox or through APP STORE
# []- install Ommbits // disk image in dropbox or through APP STORE (optional)
# []- brew install --cask evernote // Note > Note Width > Optimize for Readability (optional)

# []- install Discord // for inspiration generators on dedicated desktop space

# []- install HP Easy Start to use the HP Deskjet 2130 (print scan copy)


# // TERMINAL || SHELL

# []- make screenshots default to save into custom Downloads folder; note: absolute path not relative
# $ mkdir ~/Downloads/SCREENSHOTS
# $ defaults write com.apple.screencapture location /Users/reinhardt021/Downloads/SCREENSHOTS
# OR
# $ mkdir ~/Library/Mobile Documents/com~apple~CloudDocs/SCREENSHOTS
# $ defaults write com.apple.screencapture location /Users/reinhardt021/Library/Mobile\ Documents/com~apple~CloudDocs/SCREENSHOTS

# []- install HOMEBREW:
# // can check website -> https://brew.sh/
# $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# []- brew install --cask caffeine // prevents system from going to sleep
# // ^ may require you to install Rosetta for Apple Silicon
# []- brew install --cask rescuetime // time optimizing application - login to turn it on for system and firefox
# []- install RescueTime Assistant // to have better control of focus sessions

# []- install Zoom zoom ZOOM // video communication platform - through calendar event
# []- insatll Skype skype SKYPE (optional) // not really necessary I feel

# []- install Loom loom LOOM (optional) // for screen recording

# []- install ANDROID STUDIO
# []- install GENYMOTION (optional - haven't used it recently)

# []- brew install --cask signal // messaging app focusing on security

# []- brew install --cask vlc // video/audio playback (optional)
# []- brew install --cask obs // streaming
# []- brew install --cask qbittorrent (optional)
# []- brew install --cask calibre // e-books management software (optional)


## MULTIPLE SSH KEY SETUP
# // might be able to find copy of .ssh/ folder in one of your USBs to bypass all this
# []- save .ssh/ FILES to a USB stick <> onto computer
# []- save .ssh/config to a USB stick <> onto computer
# []- copy .ssh files

# $ ssh-keygen -t ed25519 -C "<your@email.com>"
# // you will get the following prompt:
# Generating public/private ed25519 key pair.
# Enter file in which to save the key (/home/user/.ssh/id_ed25519):
# // you then enter the /absolute_path/to/new/file/custom_file_name OR just press enter to take default
# example: ~/.ssh/id_ed25519_custom
# // then you must enter a passphrase
# Enter passphrase (empty for no passphrase):
# Enter same passphrase again:
# // then you update the ~/.ssh/config file to include the new ssh-key
# example:
# Host github-hm
    #HostName github.com
    #User git
    #IdentityFile ~/.ssh/id_ed25519_custom
    #IdentitiesOnly yes

# // ADD the SSH KEY to CLOUD SERVICE (ex: gitlab or github)
# // note: I usually name it <device-name> <email> <date> 
# // example: MBP reinhardt.cgr@gmail.com 202101026
# // clone the repo now
# $ git clone @github-hm:user-name/project-repo.git

# // CLONE DOTFILES into home/root directory ~ || /Users/reinhardtc
# $ git clone git@github.com:reinhardt021/dotfiles.git
# // can also set to specific ssh config
# $ git clone git@github-personal:reinhardt021/dotfiles.git

# // to change remote after the fact
# $ git remote set-url origin git@github-personal:reinhardt021/dotfiles.git
# $ git remote -v 

# // fix global git username and email for personal commits
# $ git config --global user.name "Reinhardt"
# $ git config --global user.email reinhardt.cgr@gmail.com
# // if you need to reset a recent comment then run the following:
# $ git commit --amend --reset=author


# install ITERM(2) (optional - can just use Terminal with tmux)
# []- brew install --cask iterm2
    # []- Preferences > Appearances > General > Theme > Minimal # // adjust to minimal
    # []- Preferences > Profiles > Window > Transparencey # // adjust bg transparency
        # 1/6 = (1/3 * 1/2)
    # []- Preferences > Profiles > Window > Blur # // adjust bg blur
        # 25%
    # []- Preferences > Profiles > Colors > Color Presets > Pastel (Dark Background)
    # []- Preferences > Profiles > Colors > Minimum Contrast: 50%
    # []- Preferences > Profiles > Colors > Cursor Boost: 25%
    # []- Preferences > Profiles > Colors > Cursor Colors > Cursor: 50% Gray
    # // disable mouse reporting
    # []- Preferences > Profiles > Terminal > Enable Mouse Reporting: NO / disabled / unchecked
    # // how to scroll tmux and vim without scrolling window
    # []- Preferences > Advanced > Mouse > Scroll wheel sends arrow keys when in alternate screen mode: YES
    # TODO: export these configs
    # TODO: save config to cloud & USB backups

# []- brew install tmux #// configure plugins see .tmux.conf
# []- brew install neovim
# []- configure all with the ~/dotfiles/MAC/apps-02-config.sh
#  // chsh -s /bin/bash #// change default shell to bash (fine with zsh now)
# []- brew install ripgrep # // used for fzf.vim
# []- brew install bat # // used for fzf.vim preview 
# []- brew install code-minimap # // used for minimap.vim sidebar 
# []- brew install sc-im # // used for spreadsheets in commandline like vim 

# []- brew install tree # // to show directory tree
# []- brew install watch # // to run shell to repeatedly run a cmd 
	# watch -n 10 <command + arguments> # // watches every 10 seconds
# []- brew install mosh // for better SSH when on mobile or just for spotty connections

# []- RESTART ITERM // to get new changes


# // may need to update this to setup zsh
# []- brew install bash // to get latest bash (DEPRECATED)
# []- exec bash // reload bash
# []- bash --version // verify update

# []- GIT auto completion
# // note need to run the following first
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash



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
    # /Users/${USER}/Library/DBjaverData/workspace6/General/.dbeaver/
    # Sequel Pro > settings (bottom left gear) > import (plist file)
    # use environment variables on AWS S3 higherme.environment

# API CLIENT
# brew install --cask postman #// api development
    # // just log in and it will all be there Collection + env vars
    # save Postman configs >> might not need this if saved to account
    # optional as using httpie in commandline now
# // INSTALL HTTPIE
# brew install httpie
    
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
# $ brew install composer
# OR
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

# install RUBY ON RAILS ruby on rails

# // install RVM to have the proper version ~2.7.0
# $ curl -sSL https://get.rvm.io | bash -s stable --ruby
# // reference:
# https://rvm.io/rvm/install

# // install rails
# $ gem install rails

# // start a new rails project
# $ rails new blog 
# // start up the web server
# $ bin/rails server


# MISE EN PLACE - OPEN APPLICATIONS
# // virtual dedicated spaces to compartmentalize better

## INSPO - desktop 1
# open -a Discord
# open -a Twitter

## DEV CRAFT - desktop 2
# open -a "Brave"
# open -a Firefox (deprecated optional)
# open -a Postman (deprecated => using HTTPIE) httpie
# open -a Finder

## full screen
# open -a iTerm

## PERSONAL - desktop 3
# open -a Obsidian
# open -a Notion
# open -a Evernote (deprecated)
# open -a Firefox (optional)

# []- LINK Apple Calendar to Google Calendar (optional) // so can have offline information


# // Add this to the /etc/hosts file
#```
#127.0.0.1       facebook.com
#127.0.0.1       www.facebook.com
#127.0.0.1       instagram.com
#127.0.0.1       www.instagram.com
#127.0.0.1       youtube.com
#127.0.0.1       www.youtube.com
#```

