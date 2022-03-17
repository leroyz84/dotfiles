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
    #audio via hdmi:
    pacmd set-card-profile 2 "output:hdmi-stereo"
elif [[ ${LOCATION} == "KANTOOR" ]]; then
    echo "KANTOOR!"

    #links HDMI
    xrandr --output DP-3 --mode 1680x1050 --pos 0x0 --rotate normal
    #midden DP
    xrandr --output DP-1 --primary --mode 1920x1080 --pos 1680x0 --rotate normal
    #audio via hdmi
    pacmd set-card-profile 0 "output:hdmi-stereo"
else
    echo "somewhere else"
    xrandr --output eDP-1 --mode 1920x1080 --pos 1920x0 --rotate normal
    xrandr --output DP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --off
fi

