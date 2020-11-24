#!/usr/bin/env bash

# # Switch to headphone jack
# amixer set 'Headphone' 100% && amixer set 'Speaker' 0%
# 
# # Switch to speaker
# amixer set 'Headphone' 0% && amixer set 'Speaker' 100%

MODE_FILE=/tmp/pulse_mode

function get_mode() {
    if test -f "$MODE_FILE"; then
        cat "${MODE_FILE}";
    else
        echo 0;
    fi
}

function change_mode() {
    if [ "$mode" -lt "3" ]; then
        ((mode++))
    else
        mode=0
    fi
    echo $mode > $MODE_FILE;
}

function update_feed() {
    while true; do
        echo "$(get_mode)";
    done
}

function vol_inc() {
    amixer set 'Master' 5%+ >> /dev/null
    amixer -c 2 set 'PCM' 5%+ >> /dev/null
}

function vol_dec() {
    amixer set 'Master' 5%- >> /dev/null
    amixer -c 2 set 'PCM' 5%- >> /dev/null
}

mode=$(get_mode)

case "$1" in
    up)
        vol_inc
        ;;
    down)
        vol_dec;
        ;;
    next_sink)
        next_sink
        ;;
    feed)
        update_feed
        ;;
    change_mode)
        change_mode
        ;;
esac
