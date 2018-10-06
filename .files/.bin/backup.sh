#!/bin/sh

if [ ! -d ~/.backup ]; then
    mkdir ~/.backup
    echo "Backup directory created."
fi

if [ $# -ne 1 ]; then
    echo -e "Usage:\n\t$0 File_name"
else
    ln $1 ~/.backup
    echo "File backup in $HOME/.backup"
fi
