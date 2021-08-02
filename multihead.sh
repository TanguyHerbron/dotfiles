#!/bin/bash

if [ /tmp/multihead ] ; then
    rm /tmp/multihead
    # xrandr --auto --output HDMI-0 --right-of eDP-1-1 && xrandr --auto --output DP-1-1 --right-of HDMI-0
    xrandr --auto --output DP-1-1 --left-of eDP-1-1 && xrandr --auto --output HDMI-0 --left-of DP-1-1
    
    i3-msg "workspace 3, move workspace to output eDP-1-1"
    i3-msg "workspace 1, move workspace to output HDMI-0"
    i3-msg "workspace 2, move workspace to output DP-1-1"
    ~/.config/polybar/launch.sh > /dev/null 2>&1
fi
