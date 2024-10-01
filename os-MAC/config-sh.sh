# LOCAL MACHINE DEV SETUP

# // TODO: check for dependencies needed to run these configs

# // TODO: for each of these files check if files already exists 
# // if so then add to the end of the files
# // if no then do the straight forward symlink
#ln -s ~/dotfiles/MAC/.bash_profile ~/.bash_profile
#ln -s ~/dotfiles/MAC/.zprofile ~/.zprofile # this doesn't seem to load when opening new terminal sessions
ln -s ~/dotfiles/os-MAC/.zshrc ~/.zshrc
# // note: use path relative to home (~/.../file) 
# // not relative to pwd (./file) 

