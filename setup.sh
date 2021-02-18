# LOCAL MACHINE DEV SETUP

# // TODO: check for dependencies needed to run these configs

# // TODO: for each of these files check if files already exists 
# // if so then add to the end of the files
# // if no then do the straight forward symlink
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
# // TODO: install VIM plugins 
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim

ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
# // can then run the shell script for tmux setup for a new project
# // run `:source ~/.tmux.conf` if already in tmux
