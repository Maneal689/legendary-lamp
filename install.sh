#!/bin/bash

if [ $HOME == "/root" ]; then
    echo "This script cannot be start as root..."
    exit
fi


pacman -S - < files/packagesList.txt

echo "##############################"
echo "### INSTALL POWERLINE FONT ###"
echo "##############################"

mkdir ~/.fonts
sudo cp files/Fura\ Code\ Regular\ Nerd\ Font\ Complete.ttf ~/.fonts/
fc-cache -f -v

echo "############"
echo "### DONE ###"
echo "############"


echo "##############"
echo "### CONFIG ###"
echo "##############"

cp files/{.conkyrc,.eslintrc,.prettierrc,.zshrc,.tmux.conf} $HOME/
cp -r files/config/* $HOME/.config/
cp -r files/.bin/ $HOME/
cp -r files/.oh-my-zsh $HOME/

ln -s ~/.vimrc $HOME/.config/nvim/init.vim
ln -s ~/.vim $HOME/.config/nvim

chsh -s $(which zsh)

echo "############"
echo "### DONE ###"
echo "############"
