#!/bin/bash

DOTPATH=`readlink -f .`

for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".config" ] && continue
    [ -d "$f" ] && continue
    ln -snfv "$DOTPATH/$f" "$HOME/$f"
done

CONFIGPATH=`readlink -f ./.config`

cd $CONFIGPATH

for f in *
do
    if [ -d "$f" ]
    then
        ln -sfv "$CONFIGPATH/$f" "$HOME/.config/"
    fi
done
