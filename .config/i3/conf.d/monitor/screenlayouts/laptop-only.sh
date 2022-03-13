#!/bin/sh

source `dirname ${0}`/logic.sh
echo ${LOCATION}

# Turn off all displays
all_outputs_off

xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --primary

