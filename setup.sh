#
# Setup script for developer environment
#

apt update -y ; apt upgrade -y

# Vim
apt install -y vim
cp -rf vim/. ~/.vim/
cp -f vim/vimrc ~/.vimrc

# Bash
cp -f bashrc ~/.bashrc
source ~/.bashrc

# Terminator
apt install -y terminator
mkdir ~/.config/terminator/
cp -f terminator.cfg ~/.config/terminator/config
