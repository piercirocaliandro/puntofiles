#!/bin/bash

MATRICOLA=""
PASS=""

if [[ $MATRICOLA && $PASS ]]; then
        nmcli con add type wifi ifname wlan0 con-name eduroam ssid eduroam ipv4.method auto 802-1x.eap peap 802-1x.phase2-auth mschapv2 802-1x.identity $MATRICOLA 802-1x.password $PASS wifi-sec.key-mgmt wpa-eap
else
        echo 'Please provide a username and a password'
fi
