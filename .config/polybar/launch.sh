#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# List monitors to load the bars on every one of them
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar top -c ~/.config/polybar/config-top.ini &
        MONITOR=$m polybar bottom -c ~/.config/polybar/config-bottom.ini &
    done
else
    # Launch bar1 and bar2
    polybar top -c ~/.config/polybar/config-top.ini &
    polybar bottom -c ~/.config/polybar/config-bottom.ini &
fi
