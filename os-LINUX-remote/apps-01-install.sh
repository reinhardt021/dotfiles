# ---
# REMOTE LINUX (Ubuntu) MACHINE SETUP
# ---

# INSTALL TMUX [1]
sudo apt-get install tmux #// only Ubuntu & Debian

# INSTALL NEOVIM [2]
sudo apt install neovim #// only Ubuntu

# INSTALL RIPGREP [2a] for navigating code
sudo apt update
#sudo apt-get ripgrep
sudo apt install ripgrep fzf

# CREATE SSH KEY [3a]
# passphrase = hima

# UPDLOAD SSH KEY to GITHUB [3b]
# (google this if needed)

# CLONE DOTFILES [3c]
git clone git@github.com:reinhardtcgr/dotfiles.git
#git clone git@github.com:reinhardt021/firefly-next.git

# >>
# you can then ssh into the server
# and open a new tmux session 
# and get going from here
# ...

# EXTRAs

#install rust 
echo "installing rust ...";
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# // see the website: https://www.rust-lang.org/tools/install

# .
# GOTO apps-02-config.sh

# // install mosh to allow using mosh to tunnel into the server from any computer
# // for better SSH when on mobile or just for spotty connections
sudo apt-get install mosh
