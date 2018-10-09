#!/bin/bash

echo "##################################"
echo "###   COPYING ZSH/VIM CONFIG   ###"
echo "##################################"
sudo cp -r ~/.oh-my-zsh ~/Projects/script/legendary-lamp/.files
echo ".oh-my-zsh (R)"
cp -r ~/.bin ~/Projects/script/legendary-lamp/.files
echo ".bin (R)"
sudo cp -r ~/.vim ~/Projects/script/legendary-lamp/.files
echo ".vim (R)"
cp ~/.zshrc ~/Projects/script/legendary-lamp/.files
echo ".zshrc"
cp ~/.vimrc ~/Projects/script/legendary-lamp/.files
echo ".vimrc"
echo "################"
echo "###   DONE   ###"
echo "################"

echo "################################"
echo "###   COPYING CONFIG FILES   ###"
echo "################################"
cp -r ~/.config/{i3,polybar,rofi,terminator} ~/Projects/script/legendary-lamp/.files/config/
cp ~/.Xresources ~/Projects/script/legendary-lamp/.files/config
echo "################"
echo "###   DONE   ###"
echo "################"
