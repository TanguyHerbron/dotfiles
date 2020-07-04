#!/usr/bin/env sh

config_file = 
echo "test"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar -rq top_bar -c $HOME/.config/polybar/test1 &
polybar -rq bottom_bar -c $HOME/.config/polybar/test1 &
