#!/bin/bash

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
