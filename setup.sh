#
# Setup script for developer environment
#

apt update -y ; apt upgrade -y

# Vim
apt install -y vim
cp -r vim/ ~/.vim/
cp vim/vimrc ~/.vimrc

# Bash
cp bashrc ~/.bashrc
source ~/.bashrc

# Terminator
apt install -y terminator
mkdir ~/.config/terminator/
cp terminator.cfg ~/.config/terminator/config
