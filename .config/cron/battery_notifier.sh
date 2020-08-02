#!/bin/bash

battery_level=$(acpi -b | grep -P -o -m1 "[0-9]+(?=%)")

if [ $battery_level -le 5 ]
then
    /usr/bin/notify-send "Battery level critical" "Battery level critically low, plug to avoid shutdown" --urgency=critical
    exit
fi

if [ $battery_level -le 15 ]
then
    /usr/bin/notify-send "Battery low" "Battery level dropped under 15%"
    exit
fi

