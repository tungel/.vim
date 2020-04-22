#!/bin/bash

set -x

if [[ -e ~/.vim ]]; then
  if [[ -h ~/.vim ]]; then
    echo "~/.vim is already a symlink. Nothing to do."
    exit 0
  else
    echo "Backing up ~/.vim..."
    mv ~/.vim{,-original}
  fi
fi

VIM_REPO_DIR=`pwd`

cd bundle/vimproc.vim
make

cd $VIM_REPO_DIR
ln -s `pwd` ~/.vim

# for nvim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
pip3 install --user pynvim

