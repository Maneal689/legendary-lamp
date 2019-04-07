#!/bin/sh

RES=`zenity --entry --title="Cours" --text="Selectionnez la matière:" --entry-text="Langage C" "Algorithmique" "Programmation Web" "Anglais" "UCPP"`

CPATH=$HOME/Documents/cours3

if [ "$RES" == "" ]; then
    echo "Canceled."
    exit
fi


if [ -L $HOME/Cours ]; then
    rm $HOME/Cours
    echo "Old link removed."
fi


if [ "$RES" = "Langage C" ]; then
    CPATH=$CPATH/lanc
elif [ "$RES" = "Algorithmique" ]; then
    CPATH=$CPATH/algo
elif [ "$RES" = "Programmation Web" ]; then
    CPATH=$CPATH/pweb
elif [ "$RES" = "Anglais" ]; then
    CPATH=$CPATH/anglais
elif [ "$RES" = "UCPP" ]; then
    CPATH=$CPATH/UCPP
fi


ln -s $CPATH $HOME/Cours
echo "Link created to $CPATH"

