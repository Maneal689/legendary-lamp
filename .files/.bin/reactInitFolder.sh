#!/bin/sh

if [ $# -eq 1 ]; then
    mkdir $1 && cd $_
    mkdir -p {src/{components,styles},dist}
    tree .
    echo "Folders created."
    npm init -y
    echo "########################################"
    echo "### Installing packages dependencies ###"
    echo "########################################"
    echo "### Installing WebPack... (1/4)###"
    echo "##################################"
    npm install webpack webpack-cli webpack-dev-server html-webpack-plugin --save-dev
    echo "#########################"
    echo "### WebPack installed ###"
    echo "################################"
    echo "### Installing React... (2/4)###"
    echo "################################"
    npm install react react-dom --save
    echo "#######################"
    echo "### React installed ###"
    echo "################################"
    echo "### Installing Babel... (3/4)###"
    echo "################################"
    npm install @babel/core babel-loader @babel/preset-env @babel/preset-react --save-dev
    echo "#######################"
    echo "### Babel installed ###"
    echo "##################################"
    echo "### Installing loaders... (4/4)###"
    echo "##################################"
    npm install css-loader style-loader file-loader html-loader --save-dev
    echo "#########################"
    echo "### Loaders Installed ###"
    echo "#########################"

    echo "Adding scripts in packages.json and inialize config and sample files..."
    cp -r $PBIN/.files/reactConfig/* .
    cp $PBIN/.files/reactConfig/.babelrc .
    sed -i '/\s*"scripts":\s*{/a\
    "start": "webpack-dev-server --mode development --open --hot",\
    "build": "webpack --mode production",' package.json
    echo "Done."

else
    echo -e "Usage:\n\t$0 FOLDER_NAME"
fi
