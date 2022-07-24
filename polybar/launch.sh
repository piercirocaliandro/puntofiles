#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar top_bar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Launching polybar..."
