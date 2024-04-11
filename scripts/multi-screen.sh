#!/bin/bash
# Dummy script to manage monitor with xrandr
# Output names may vary depending on distro / machine.
#

BANNER='        
  /\/\  / _\  /\/\  
 /    \ \ \  /    \ 
/ /\/\ \_\ \/ /\/\ \
\/    \/\__/\/    \/
                    '

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color


echo -e "\n$BANNER\n"

if [ $# -lt 1 ]; then
    echo -e "${YELLOW}[!] Usage: ./multi-screen.sh <option>\n\nOptions:\n\t--on\n\t--off\n\t--mirror${NC}"
    exit 1
fi

if [ $1  = "--on" ]; then
    echo -e "${GREEN}[+] Enabling multi monitor${NC}"
    xrandr --output HDMI-1 --left-of eDP-1 --auto
elif [ $1 = "--off" ]; then
    echo -e "${GREEN}[+] Disabling multi monitor${NC}"
    xrandr --output HDMI-1 --off
elif [ $1 = "--mirror" ]; then
    if [ $# -lt 2 ]; then
      echo -e "${YELLOW}[!] You need to specify the HDMI-1 screen size (e.g. 1280x1024)${NC}"
      exit 1;
    fi
    echo -e "${GREEN}[+] Enabling mirroring${NC}"
    xrandr --output eDP-1 --auto --output HDMI-1 --mode $2 --same-as eDP-1
else
    echo -e "${RED}[x] Invalid argument${NC}"
fi 


