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

cp -r files/config/nvim $HOME/.config/
ln -s ~/.vimrc $HOME/.config/nvim/init.vim
ln -s ~/.vim $HOME/.config/nvim

cp -r files/config/* ~/.config/

cp -r files/.oh-my-zsh ~/
cp -r files/.bin/ ~/
chsh -s $(which zsh)

echo "############"
echo "### DONE ###"
echo "############"
