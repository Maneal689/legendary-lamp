#!/bin/sh
SESSIONS_FOLDER=$HOME/.vim/sessions
VIMRC=$HOME/.vimrc
LS_COMMANDE="ls $SESSIONS_FOLDER"
RES=$($LS_COMMANDE)
OPTIONS=()
cpt=0
for opt in $RES
do
  OPTIONS[$cpt]=$opt
  echo "$cpt: [$opt]"
  ((cpt++))
done
LEN=${#OPTIONS[@]}

read -p "Choix: " CHOICE

if [ $CHOICE -ge 0 ] && [ $CHOICE -lt $LEN ]
then
  RES=$SESSIONS_FOLDER/${OPTIONS[$CHOICE]}
  echo "export VIM_SESSION=$RES"
  export VIM_SESSION=$RES
else
  echo "Wrong entry..."
fi
