#!/bin/bash

if [ $HOME == "/root" ]; then
    echo "This script cannot be start as root..."
    exit
fi


pacman -S - < files/packagesList.txt

echo "##############"
echo "### CONFIG ###"
echo "##############"

mkdir ~/.fonts

cp files/{.conkyrc,.eslintrc,.prettierrc,.zshrc,.tmux.conf} $HOME/
cp -r files/config/* $HOME/.config/
cp -r files/{.bin,.oh-my-zsh,.fonts} $HOME/
fc-cache -f -v

ln -s ~/.vimrc $HOME/.config/nvim/init.vim
ln -s ~/.vim $HOME/.config/nvim

chsh -s $(which zsh)

echo "############"
echo "### DONE ###"
echo "############"
