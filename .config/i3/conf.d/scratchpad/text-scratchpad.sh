#!/bin/bash

# Script stolen from https://www.reddit.com/r/i3wm/comments/mkjjaj/very_useful_i3_config_open_floating_window/
# Modified to check for changes, and a parameter to edit clipboard, or start new file

# i3config:
#   for_window [class=Alacritty instance="__text_scratchpad"] floating enable
#   bindsym $mod+g exec /home/leroy/scripts/text-scratchpad
#   bindsym $mod+shift+g exec /home/leroy/scripts/text-scratchpad clipboard

# Needs xclip & alacritty !

tmp_file=$(mktemp)
#check if parameter
if [ ! -z $1 ] ; then
    if [ "$1" == "clipboard" ]; then
        xclip -selection c -o > ${tmp_file}
    fi
fi
# baseline
MD5=`md5sum ${tmp_file}`

# edit file in a terminal
#alacritty --class="__text_scratchpad" -e $SHELL -lc "sleep 0.1 && vim -c startinsert -c 'setlocal spell' ${tmp_file}"
alacritty --class="__text_scratchpad" -e $SHELL -lc "vim ${tmp_file}"

# check if file chaned (needs clibboard change?
MD5_AFTER=`md5sum ${tmp_file}`
if [[ ! "${MD5}" == "${MD5_AFTER}" ]] ; then
    xclip -selection clipboard < $tmp_file
fi

# cleanup
rm ${tmp_file}

