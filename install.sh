#!/bin/bash

if [ $HOME == "/root" ]; then
    echo "This script cannot be start as root..."
    exit
fi


pacman -S - < files/packagesList

echo "##############"
echo "### CONFIG ###"
echo "##############"

mkdir ~/.fonts

cp files/{.zshrc,.tmux.conf} $HOME/
cp -r files/config/* $HOME/.config/
cp -r files/{.bin,.oh-my-zsh,.fonts} $HOME/
fc-cache -f -v

ln -s $HOME/.config/nvim/init.vim ~/.vimrc
ln -s $HOME/.config/nvim ~/.vim

chsh -s $(which zsh)

echo "############"
echo "### DONE ###"
echo "############"
