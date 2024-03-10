#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Expected one argument"
    exit 1
fi

if [ $1 -eq 1 ]; then
    echo "Enabling multi monitor..."
    xrandr --output HDMI-1 --left-of eDP-1 --auto
elif [ $1 -eq 0 ]; then
    echo "Disabling multi monitor..."
    xrandr --output HDMI-1 --off
else
    echo "Invalid argument"
fi 


