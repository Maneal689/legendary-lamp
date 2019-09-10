#!/bin/bash
FOLDER="$LEGENDARY/files"

if [ $HOME == "/root" ]; then
    echo "Don't run as root."
    exit
fi

echo "################################"
echo "###   COPYING CONFIG FILES   ###"
echo "################################"

sudo mkdir -p $FOLDER/config/nvim

sudo cp -r ~/.bin $FOLDER
sudo cp -r ~/.fonts $FOLDER
sudo cp -r ~/.oh-my-zsh $FOLDER
sudo cp ~/{.eslintrc.js,.prettierrc.js,.conkyrc,.tmux.conf,.zshrc} $FOLDER

sudo cp -r ~/.config/{i3,polybar,rofi,termite,compton.conf,launchCompton.sh,bspwm,sxhkd,dunst} $FOLDER/config/


#-- NeoVim
sudo cp -r ~/.config/nvim/autoload $FOLDER/config/nvim
sudo cp ~/.config/nvim/init.vim $FOLDER/config/nvim
#ln ~/.config/nvim/init.vim ~/.vimrc
#ln -s ~/.config/nvim/ ~/.vim



echo -e "Config:\n\t- conkyrc\n\t- eslintrc\n\t- prettierrc\n\t- tmux\n\t- zsh\n\t- i3\n\t- polybar\n\t- rofi\n\t- termite\n\t- nvim\n\t- compton\n\t- bspwm\n\t- sxhkd\n\t- dunst"


echo "################"
echo "###   DONE   ###"
echo "################"
