#!/bin/bash
# BIG thanks to morrolinux (for the hint) and to luispabon (on github)

entries="⇠ Logout\n⏾ Suspend\n⭮ Reboot\n⏻ Shutdown"

#selected=$(echo -e $entries|wofi --width 250 --height 210 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')
selected=$(echo -e $entries|wofi --dmenu --x 0 --y 0 --width 250 --height 210 --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
