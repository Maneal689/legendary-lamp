#!/bin/bash

if [ $HOME == "/root" ]; then
    echo "This script cannot be start as root..."
    exit
fi

echo "######################"
echo "### PACKAGING TOOL ###"
echo "######################"

packtool="0"
while [ $packtool != "1" ] && [ $packtool != "2" ]
do
    read -p 'WHATS YOUR PACKAGING TOOL:
[1] PACMAN
[2] APT-GET
YOUR CHOICE: ' packtool
done

if [ $packtool = "1" ]; then
    packtool="pacman"
    packArgInstall="-S"
    sudo pacman -Syu
else
    packtool="apt-get"
    packArgInstall="install"
    sudo apt-get upgrade
    sudo apt-get update
fi

echo "packtool: $packtool"
echo "packArgInstall: $packArgInstall"
echo "##############################"
echo "### INSTALLING NECESSARIES ###"
echo "##############################"

echo -e "y\n" | sudo $packtool $packArgInstall vim
echo -e "y\n" | sudo $packtool $packArgInstall tree
echo -e "y\n" | sudo $packtool $packArgInstall git
echo -e "y\n" | sudo $packtool $packArgInstall terminator
echo -e "y\n" | sudo $packtool $packArgInstall zsh
echo -e "y\n" | sudo $packtool $packArgInstall curl
echo -e "y\n" | sudo $packtool $packArgInstall wget
#echo -e "y\n" | sudo $packtool $packArgInstall emacs
echo -e "y\n" | sudo $packtool $packArgInstall ncurses
echo -e "y\n" | sudo $packtool $packArgInstall valgrind
echo -e "y\n" | sudo $packtool $packArgInstall gdb
echo -e "y\n" | sudo $packtool $packArgInstall gcc
echo -e "y\n" | sudo $packtool $packArgInstall clang
echo -e "y\n" | sudo $packtool $packArgInstall filezilla
echo -e "y\n" | sudo $packtool $packArgInstall git
echo -e "y\n" | sudo $packtool $packArgInstall cmake

echo "############"
echo "### DONE ###"
echo "############"


echo "##############################"
echo "### INSTALL POWERLINE FONT ###"
echo "##############################"

mkdir ~/.fonts
sudo cp .files/Inconsolata\ for\ Powerline.otf ~/.fonts/
fc-cache -f -v

echo "############"
echo "### DONE ###"
echo "############"


echo "##################"
echo "### CONFIG VIM ###"
echo "##################"

cp -r .files/.vim ~/
cp .files/.vimrc ~/

echo "############"
echo "### DONE ###"
echo "############"

echo "###############################"
echo "### CONFIG ZSH AND BINARIES ###"
echo "###############################"

cp .files/.zshrc ~/
cp -r .files/.oh-my-zsh ~/
cp -r .files/.bin/ ~/
echo "Enter \"/bin/zsh\""
chsh

echo "############"
echo "### DONE ###"
echo "############"
