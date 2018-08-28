#!/bin/bash

#
# Setup script for developer environment
#

apt update -y ; apt upgrade -y
git submodule init
git submodule update --recursive --remote

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

# Colorls
apt install -y ruby ruby-dev build-essential
./nerd-fonts/install.sh Hack
gem install colorls
cp colorls_colors.yaml $(dirname $(gem which colorls))/yaml/dark_colors.yaml
source ~/.bashrc
