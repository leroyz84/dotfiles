#!/bin/bash


source ~/.config/i3/conf.d/monitor/screenlayouts/logic.sh
if [ "${LOCATION}" == "KANTOOR" ]; then
    echo `date +%Y-%m-%d` >> ~/kantoor.log
fi
if [ "${LOCATION}" == "THUIS" ]; then
    echo `date +%Y-%m-%d` >> ~/thuis.log
fi

