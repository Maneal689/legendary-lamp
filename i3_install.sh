#!/bin/bash

if [ $HOME == "/root" ]; then
    echo "This script cannot be start as root..."
    exit
fi

pack='n'

read -p "Are you using Pacman? o/N" pack

if [ $pack -ne "o" ] || [ $pack -ne "O" ]; then
    exit
fi



sudo pacman -S i3-gaps
sudo pacman -S feh
sudo pacman -S compton
sudo pacman -S lxappearance
sudo pacman -S rofi
sudo pacman -S dmenu
sudo pacman -S i3status
sudo pacman -S network-manager-applet
sudo pacman -S ranger
echo "Select ttf and otf Awesome fonts v5"
trizen font-awesome
echo "Select siji-git"
trizen siji
echo "Select polybar"
trizen polybar

echo "#############################"
echo "###   INSTALLATION DONE   ###"
echo "#############################"

echo "################################"
echo "###   COPYING CONFIG FILES   ###"
echo "################################"

cp -r .files/config/* ~/.config/

echo "###########################"
echo "### CONFIG FILES COPIED ###"
echo "###########################"
