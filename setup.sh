#!/bin/bash

#
# Setup script for developer environment
#

apt update -y ; apt upgrade -y

# Install common environment packages
apt install -y vim
apt install -y tree
apt install -y terminator

# Vim
cp -r vim/ ~/.vim/
cp vim/vimrc ~/.vimrc

# Bash
cp bash_aliases ~/.bash_aliases
source ~/.bashrc

# Terminator
cp terminator.cfg ~/.config/terminator/config
