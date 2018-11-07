#!/bin/sh
cp $PBIN/.files/CMakeLists.txt .
if [ $# -eq 1 ]; then
    sed -i "s/a.out/$1/g" CMakeLists.txt
fi
cmake -G "Unix Makefiles"
