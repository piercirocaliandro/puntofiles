#!/bin/bash

IMG_PATH="/home/pierkiro/Images/lock.png"

if [[ $IMG_PATH ]]; then
        i3lock --nofork --show-failed-attempts --ignore-empty-password --tiling --image=$IMG_PATH

        xset dpms
else
        echo 'Please provide the path for the background image'
fi
