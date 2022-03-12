#!/bin/sh

# This script will create symlinks to this repo

export gitlocation=~/github/dotfiles/.config/

cd ~/.config
for folder in `find ${gitlocation} -mindepth 1 -maxdepth 1 -type d`; do
    if [ ! -e `basename ${folder}` ];  then
        echo symlinking ${folder}
        ln -s ${folder}
    fi
done

