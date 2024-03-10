#!/bin/bash
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "mons"; then
    # if $(xrandr --query | grep " connected" | cut -d" " -f1 | grep "HDMI-1"); then
    # xrandr --output eDP-1 --auto
    # sleep 2
    # xrandr --output HDMI-1 --left-of eDP-1 --auto
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload bar &
    done
else
    polybar --reload bar
fi
