#!/bin/sh

if [ $# -eq 1 ]; then
    FILE="$1"
else
    FILE="main.c"
fi
cp $PBIN/.files/main.c ./$FILE
echo "$FILE created"
