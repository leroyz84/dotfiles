#!/bin/bash
#
# This script is written based on rofi and i3wm
# It makes it easy so fuzzysearch my favorite bookmarks
# e.g. ~/.config/bookmarks:
# https://url.com | my pretty name

config=~/.config/bookmarks

# check if edit was called
if [ "$1" == "-e" ]; then
	vim ${config}
	exit
fi

if [ ! -e ${config} ]; then
    mkdir -p `dirname ${config}`
    echo 'https://example.com | example.com, this is an example entry' > ${config}
fi

declare -A options

while IFS="|" read -r url comment; do

    if [ ${#comment} -eq 0 ]; then
        comment=${url}
    else
        # remote whitespace
        comment=$( echo ${comment})
    fi

    if [ ! ${#url} -eq 0 ]; then
        options[$comment]=${url}
    fi


done < <(sort ${config} | grep -v -e '^#')

chosen=$(printf '%s\n' "${!options[@]}" | sort | rofi -width 95 -dmenu -p bookmark -i -markup-rows)

if [ $? -eq 0 ]; then
    url=$(printf '%s\n' "${options["${chosen}"]}" | cut -f1 -d' ')
    xdg-open ${url}
fi
