#!/bin/bash

echo "##############################"
echo "### INSTALLING NECESSARIES ###"
echo "##############################"

sudo apt-get upgrade
sudo apt-get update
echo -e "o\n" | sudo apt-get install vim
echo -e "o\n" | sudo apt-get install tree
echo -e "o\n" | sudo apt-get install git
echo -e "o\n" | sudo apt-get install terminator
echo -e "o\n" | sudo apt-get install zsh
#echo -e "o\n" | sudo apt-get install curl
echo -e "o\n" | sudo apt-get install wget
#echo -e "o\n" | sudo apt-get install emacs
echo -e "o\n" | sudo apt-get install ncurses
echo -e "o\n" | sudo apt-get install valgrind
echo -e "o\n" | sudo apt-get install gdb
echo -e "o\n" | sudo apt-get install gcc
echo -e "o\n" | sudo apt-get install clang
#echo -e "o\n" | sudo apt-get install filezilla


echo "##############################"
echo "### INSTALL POWERLINE FONT ###"
echo "##############################"

mkdir ~/.fonts
sudo cp .files/Inconsolata\ for\ Powerline.otf ~/.fonts/
fc-cache -f -v

echo "### DONE ###"

cp -r .files/.bin/ ~/

echo "##################"
echo "### CONFIG VIM ###"
echo "##################"

cp -r .files/.vim ~/
cp .files/.vimrc ~/

echo "### DONE ###"
