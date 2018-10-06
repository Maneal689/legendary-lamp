#!/bin/sh

if [ $# -eq 1 ]; then
    timidity $1 -Ow -o out.wav
    echo "$1 Converted in wav format."
elif [ $# -eq 2 ]; then
    timidity $1 -Ow -o $2
    echo "$1 Converted in wav format."
else
    echo -e "USAGE:\n\t$0 MIDI_FILE [Output file name]"
fi
