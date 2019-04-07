#!/bin/bash
FOLDER="$HOME/Projects/script/legendary-lamp"

if [ $HOME == "/root" ]; then
    echo "Don't run as root."
    exit
fi

#if [ $# -eq 1 ]; then
    #find $FOLDER -name $1 -print -exec cp $1 {} \;
    #exit
#fi

echo "##################################"
echo "###   COPYING ZSH/VIM CONFIG   ###"
echo "##################################"

sudo cp -r ~/.oh-my-zsh $FOLDER/.files
echo ".oh-my-zsh (R)"

sudo cp -r ~/.bin $FOLDER/.files
echo ".bin (R)"

cp ~/.zshrc $FOLDER/.files
echo ".zshrc"

echo "################################"
echo "###   COPYING CONFIG FILES   ###"
echo "################################"
sudo cp -r ~/.config/{i3,polybar,rofi,terminator,nvim} $FOLDER/.files/config/
cp ~/.Xresources $FOLDER/.files/config

echo ".Xresources"
echo -e "Config:\n\t- i3\n\t- polybar\n\t- rofi\n\t- terminator\n\t- nvim"


echo "################"
echo "###   DONE   ###"
echo "################"
