#!/bin/bash

BATTERY_PATH="/sys/class/power_supply/BAT1/capacity"
BATTERY_Value=$(cat $BATTERY_PATH)

if [ "$BATTERY_Value" -lt 20 ]
then
    notify-send "please take care your battery less yan 20 "
fi