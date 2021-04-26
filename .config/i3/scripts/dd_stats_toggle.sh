#!/bin/bash

if command /usr/bin/eww windows | grep *dd_capacity >> /dev/null ; then
    echo "Dd open";
    /usr/bin/eww close dd_capacity;
else
    echo "Dd closed";
    /usr/bin/eww open dd_capacity;
fi
