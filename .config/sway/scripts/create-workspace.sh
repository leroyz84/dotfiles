#!/bin/bash

ws_name=$(echo | wofi -d -p 'Workspacename' -H 10)
if [ -z "$ws_name" ]; then
    exit 2
fi
swaymsg workspace ${ws_name}
