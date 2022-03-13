#!/bin/sh

# Author: Leroy Zwakman
# requirements: rofi, xdotool
# Description:
#   This script helps you in typing stuff you use reguarly
#   phonenumer, username, email etc
#   Every folder is a category (submenu)
#   Every file is "typeable" shortcut

#  ~/.config/phrases/user
#    - username (containers leroy.zwakman)
#    - email (contains leroy.zwakman@domain.tld}
#  ~/.config/phrases/git
#    - gitpull (containers git pull )
#    - gitclone (contains  git clone `getc`)

configfolder=~/.config/phrases

if [ ! -e ${configfolder} ]; then
    mkdir -p ${configfolder}
    echo 'user.name' > ${configfolder}/username 
    echo 'my@email.com' > ${configfolder}/email 
fi

cd ${configfolder}

function showmenu() {

    _path=$1
    # decide wheather to show ..
    chosen=$(ls -1p | grep -v '^\.\/$' | sort | rofi -dmenu -i  -p phrase)
    if [ ! $? -eq 0 ] ; then
        exit $?
    fi

    # check if dir, recurse
    if [ -d ${chosen} ]; then
        # enter directory, and regenerate menu
        cd ${chosen}
        showmenu ${chosen}
    # check if file; xdo!
    elif [ -f ${chosen} ]; then
        xdotool type --clearmodifiers --delay 0 "`cat ${chosen}`"
        exit $?
    # fail
    else
        echo "i don't know; sorry"
        exit 1
    fi

}

showmenu  ""

