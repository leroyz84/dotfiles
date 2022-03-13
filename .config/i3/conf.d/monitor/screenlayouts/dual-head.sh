#!/bin/sh

source `dirname ${0}`/logic.sh
echo ${LOCATION}

# Turn off all displays
all_outputs_off

if [[ ${LOCATION} == "THUIS" ]]; then
    echo "THUIS!"
    #rechts
    xrandr --output DP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --primary
    #links
    xrandr --output DP-1-2 --mode 1920x1080 --rotate normal --left-of DP-1-1
else
    echo "somewhere else"
    xrandr --output eDP-1 --mode 1920x1080 --pos 1920x0 --rotate normal
    xrandr --output DP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --off
fi

