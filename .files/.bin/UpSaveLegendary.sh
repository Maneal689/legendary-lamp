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
cp -r ~/.config/i3 ~/Projects/script/legendary-lamp/.files/config/
echo ".config/i3 (R)"
cp -r ~/.config/polybar ~/Projects/script/legendary-lamp/.files/config/
echo ".config/polybar (R)"
cp -r ~/.config/rofi ~/Projects/script/legendary-lamp/.files/config/
echo ".config/rofi (R)"
cp -r ~/.config/terminator ~/Projects/script/legendary-lamp/.files/config/
echo ".config/terminator (R)"
cp ~/.Xresources ~/Projects/script/legendary-lamp/.files/config
echo ".Xresources"
echo "################"
echo "###   DONE   ###"
echo "################"
