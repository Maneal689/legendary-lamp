#!/bin/sh

if [ $# -eq 1 ]; then
    mkdir -p $1/{src,include,bin}
    echo "Folder created."
else
    echo -e "Usage:\n\t$0 FOLDER_NAME"
fi
