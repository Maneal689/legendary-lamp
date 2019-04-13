#!/bin/bash
FOLDER="$HOME/Projects/perso/script/legendary-lamp/files"

if [ $HOME == "/root" ]; then
    echo "Don't run as root."
    exit
fi

echo "################################"
echo "###   COPYING CONFIG FILES   ###"
echo "################################"

mkdir -p $FOLDER/config/nvim

sudo cp -r ~/.bin $FOLDER
sudo cp -r ~/.oh-my-zsh $FOLDER
cp ~/{.eslintrc.js,.prettierrc.js,.conkyrc,.tmux.conf,.zshrc} $FOLDER

sudo cp -r ~/.config/{i3,polybar,rofi,termite} $FOLDER/config/

sudo cp -r ~/.config/nvim/autoload $FOLDER/config/nvim
sudo cp ~/.config/nvim/init.vim $FOLDER/config/nvim


echo -e "Config:\n\t- conkyrc\n\t- eslintrc\n\t- prettierrc\n\t- tmux\n\t- zsh\n\t- i3\n\t- polybar\n\t- rofi\n\t- termite\n\t- nvim"


echo "################"
echo "###   DONE   ###"
echo "################"
