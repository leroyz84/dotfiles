#!/bin/sh

source `dirname ${0}`/logic.sh
echo ${LOCATION}

# Turn off all displays
all_outputs_off



if [[ ${LOCATION} == "THUIS" ]]; then
    echo "THUIS!"
    #right screen
    xrandr --output DP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --primary
    #audio via hdmi
    pacmd set-card-profile 2 "output:hdmi-stereo"
else
    echo "somewhere else"
    xrandr --output DP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --primary
fi
