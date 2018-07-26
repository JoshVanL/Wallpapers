#!/bin/bash

curr=0
while true
do
    if [[ ! -f /home/josh/Wallpapers/$curr.jpg ]]
    then
        printf "completed.\n"
        exit 0
    fi
    printf "processing $curr.. "
    convert /home/josh/Wallpapers/$curr.jpg -blur 0x8 -scale 3200x1800 /home/josh/Wallpapers/blur$curr.png
    convert /home/josh/Wallpapers/blur$curr.png -scale 125% /home/josh/Wallpapers/blur$curr.png
    printf "done.\n"
    curr=$(($curr+1))
done

#convert /home/josh/Wallpapers/$curr.jpg -blur 0x8 -scale 3200x1800 /home/josh/Wallpapers/blur$curr.png
