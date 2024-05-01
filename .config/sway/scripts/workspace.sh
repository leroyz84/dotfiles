#!/bin/bash

# Script to open workspaces for custom

if [ -z $1 ]; then
    echo "usage: $0 <name ws>"
    exit  1
fi

WS=$1
L=$(wlr-randr  | grep -e DP- | awk '/18N2P83/{print $1}')
R=$(wlr-randr  | grep -e DP- | awk '/7MLBZ13/{print $1}')
#echo " swaymsg -t get_tree -p | grep 'workspace' | grep -e '${WS}1"


if ! [[ ` swaymsg -t get_tree -p | grep 'workspace' | grep -e "${WS}2"`  ]]; then
    echo ${WS}1 was er nog niet
    swaymsg workspace ${WS}2
    sleep .1
    swaymsg exec foot
    swaymsg move workspace to output ${R}
else
    swaymsg workspace ${WS}2
    swaymsg move workspace to output ${R}
fi

sleep .1

if ! [[ ` swaymsg -t get_tree -p | grep 'workspace' | grep -e "${WS}1"`  ]]; then
    echo ${WS}1 was er nog niet
    swaymsg workspace ${WS}1
    sleep .1
    swaymsg exec foot
    swaymsg move workspace to output ${L}
else
    swaymsg workspace ${WS}1
    swaymsg move workspace to output ${L}
fi


