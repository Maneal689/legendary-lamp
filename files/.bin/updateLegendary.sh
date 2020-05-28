#!/bin/bash
FOLDER="$LEGENDARY/files"

if [ $HOME == "/root" ]; then
    echo "Don't run as root."
    exit
fi


echo "################################"
echo "###   COPYING CONFIG FILES   ###"
echo "################################"


sudo cp -r ~/.bin $FOLDER
sudo cp -r ~/.fonts $FOLDER
sudo cp -r ~/.oh-my-zsh $FOLDER
sudo cp ~/{.tmux.conf,.zshrc} $FOLDER

sudo cp -r ~/.config/{awesome,awesome_backups,polybar,rofi,picom.conf,bspwm,sxhkd,dunst,kitty} $FOLDER/config/


#-- NeoVim
sudo mkdir -p $FOLDER/config/nvim
sudo cp -r ~/.config/nvim/autoload $FOLDER/config/nvim
sudo cp -r ~/.config/nvim/sessions $FOLDER/config/nvim
sudo cp ~/.config/nvim/*.vim $FOLDER/config/nvim
#ln ~/.config/nvim/init.vim ~/.vimrc
#ln -s ~/.config/nvim/ ~/.vim



echo -e "Config:\n\t- tmux\n\t- zsh\n\t- awesome\n\t- bspwm\n\t- polybar\n\t- rofi\n\t- kitty\n\t- nvim\n\t- dunst"

cd $LEGENDARY
git add --all
git commit -am "New backup"
git push


echo "################"
echo "###   DONE   ###"
echo "################"
