#!/bin/sh

if [ $# -ge 1 ]; then
    if [ $1 == "-c" ] || [ $1 == "-hc" ]; then
        if [ $# -eq 1 ]; then
            FUNCTIONS=`find . -name "*.c" -exec grep -E "(int|char|void).*\(.*\).*\{" {} \;`
        elif [ $# -eq 2 ]; then
            FUNCTIONS=`grep -E "(int|char|void).*\(.*\).*\{" $2 | sed 's/{/;/g'`
        fi
        
        if [ $1 == "-c" ]; then
            echo "$FUNCTIONS" | sed 's/{/;/g' | sed 's/) ;/);/g'
        else
            echo "$FUNCTIONS" | sed -Ef $PBIN/.files/cfunction.sed
        fi

    elif [ $1 == "-js" ]; then
        if [ $# -eq 1 ]; then
            find . -name "*.js" -exec grep -E "function.*\(.*\).*\{" {} \; | sed 's/{/;/g'
        else
            grep -E "function.*\(.*\).*\{" $2 | sed 's/{/;/g'
        fi

    elif [ $1 == "-py" ]; then
        if [ $# -eq 1 ]; then
            find . -name "*.py" -exec grep -E "def.*\(.*\).*:" {} \; | sed 's/://g'
        else
            grep -E "def.*\(.*\).*:" $2 | sed 's/://g'
        fi
    fi
fi
