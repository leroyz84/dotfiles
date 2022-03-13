#!/bin/sh

source `dirname ${0}`/logic.sh
echo ${LOCATION}

# Turn off all displays
all_outputs_off

if [[ ${LOCATION} == "THUIS" ]]; then
    echo "THUIS!"
    #laptop
    xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal
    #links
    xrandr --output DP-1-2 --mode 1920x1080 --pos 1920x0 --rotate normal
    #rechts
    xrandr --output DP-1-1 --mode 1920x1080 --pos 3840x0 --rotate normal --primary
    #audio via hdmi
    pacmd set-card-profile 2 "output:hdmi-stereo"
else
    echo "somewhere else"
    #links HDMI
    xrandr --output DP-3 --mode 1680x1050 --pos 0x0 --rotate normal
    #midden DP
    xrandr --output DP-1 --mode 1920x1080 --pos 1680x0 --rotate normal --primary
    #laptop
    xrandr --output eDP-1 --mode 1920x1080 --pos 3600x0 --rotate normal
fi

