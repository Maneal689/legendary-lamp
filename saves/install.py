#!/usr/bin/env python3
## install.py for setup in /home/maneal-prog/my_git/saves/setup
## 
## Made by Maneal
## Login   <maneal-prog@epitech.net>
## 
## Started on  Tue Jan 10 23:06:38 2017 Maneal
## Last update Thu Feb  2 18:50:46 2017 Maneal
##

import os

def rewrite_zshrc_fname():
    current_name = os.environ['LOGNAME']
    dest = "/home/" + current_name + "/.zshrc"
    zshrc = open(dest, "r")
    text = zshrc.read()
    zshrc.close()
    splitted = text.split("/")
    name = splitted[6]
    final = ""
    for elm in splitted:
        if elm == name:
            elm = current_name
        final += elm + '/'
    zshrc = open(dest, "w")
    final = final[:len(final) - 1]
    zshrc.write(final)
    zshrc.close()


### Verifying not root ###
my_home = os.environ['HOME']
if my_home == "/root":
    print("This script cannot be start as root...")
    exit(84)
    
### Installing necessaries ###
os.system("./progs.sh")


### Move .zshrc || .oh-my-zsh and change name of .zshrc ###
print("##################")
print("### CONFIG ZSH ###")
print("##################\n");
os.system("cp .files/.zshrc ~/")
os.system("cp -r .files/.oh-my-zsh ~/")
rewrite_zshrc_fname()
print("Enter \"/bin/zsh\"...")
os.system("chsh")



print("##############")
print("### FINISH ###")
print("##############")
