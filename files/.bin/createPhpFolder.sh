#!/bin/sh

if [ $# -eq 1 ]; then
    mkdir -p $1/{app,public}/{styles,js}
    mkdir -p $1/{app,public}/js/lib
    mkdir -p $1/app/styles/scss
    cd $1
    npm init -y
    npm i gulp gulp-sass gulp-clean-css gulp-minify browser-sync --save-dev
    cp $PBIN/.files/gulpfile.js .
    echo "Folder created and initiated with npm"
else
    echo -e "Usage:\n\t$0 FOLDER_NAME"
fi
