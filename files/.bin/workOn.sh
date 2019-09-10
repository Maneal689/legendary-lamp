#!/bin/sh

DIR="./"
TITLE="workOn"

if [ $# -ge 1 ]; then
  DIR="$1"
  if [ $# -eq 2 ]; then
    TITLE="$2"
  fi
fi

cd "$DIR" && tmux new -ds "$TITLE" && echo "Session created on tmux server" && exit
echo "Work session doesn't created due to an unknown problem"
