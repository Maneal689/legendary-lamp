#!/bin/sh

if [ $# -eq 1 ]; then
    COMMIT="$1"
else
    echo "Vous devez entrer une chaine de description des mises à jours."
fi
git add --all
git commit -m "$COMMIT"
git push
