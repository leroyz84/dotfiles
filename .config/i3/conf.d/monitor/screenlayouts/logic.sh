#!/bin/sh

GATEWAY=$(ip r get 1.1.1.1 | awk '/via/{print $3}')
THUIS=10.1.0.1
KANTOOR=172.25.48.1
KANTOOR_WIFI=172.25.120.1

echo ${GATEWAY}
if [[ ${GATEWAY} == "${THUIS}" ]]; then
    export LOCATION=THUIS
elif [[ ${GATEWAY} == "${KANTOOR}" ]]; then
    export LOCATION=KANTOOR
elif [[ ${GATEWAY} == "${KANTOOR_WIFI}" ]]; then
    export LOCATION=KANTOOR
else
    export LOCATION=OTHER
fi

function all_outputs_off() {

    displays=$(xrandr | awk '/ connected/{print $1}')

    for display in  ${displays}; do
        echo "Turning off ${display}"
        xrandr --output ${display} --off
    done
}

