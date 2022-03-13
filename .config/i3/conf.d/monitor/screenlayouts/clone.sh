#!/bin/sh

source `dirname ${0}`/logic.sh
echo ${LOCATION}

# Turn off all displays

displays=$(xrandr | awk '/ connected/{print $1}')

for display in  ${displays}; do
    echo "Turning off ${display}"
    xrandr --output ${display} --auto --pos 0x0
done
