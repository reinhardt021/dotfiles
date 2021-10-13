

pkg install man;

# setup bash first for easy git and moving around
# TODO CHECK IF BASH PROFILE EXISTS APPEND FILE ELSE CREATE

# setup tmux for dev setup
# TODO CHECK IF TMUX INSTALLED
pkg install tmux;

tmux ls;
echo "// tmux attach-session -t <newS>";

# TODO CHECK IF NEOVIM INSTALLED
pkg install neovim;

# // for better SSH when on mobile or just for spotty connections
pkg install mosh;
