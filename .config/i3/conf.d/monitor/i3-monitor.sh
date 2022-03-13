#!/bin/sh

# This script is intended to make switching between laptop and external displays easier when using i3+rofi
# To run this script, map it to some shortcut in your i3 config, e.g:

location=~/.config/i3/conf.d/monitor/screenlayouts

chosen=$(find ${location} -type f -printf "%f\n" | grep -v logic | rofi -dmenu -i -window-title "Monitor")

bash ${location}/$chosen

