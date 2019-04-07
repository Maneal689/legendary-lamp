#!/bin/sh

if [ $# -eq 1 ]; then
    tmux has-session -t $1 &> /dev/null
    RES=$?
    if [ "$RES" = "0" ]; then
        tmux attach-session $1 &> /dev/null
        RES_ATTACH=$?
        if [ "$RES_ATTACH" = "1" ]; then
            tmux switch-client -t $1
        fi
    else
        echo "Creation de la session."
        tmux new-session -d -s $1 -n vim
        tmux split-window -t $1:0.0 -h -p 50 -d
        tmux new-window -d -t $1 -n console
    fi
else
    echo "USAGE:\n\t$0 session-name";
fi
