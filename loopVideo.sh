#!/bin/sh

# clear terminal text, set background to black, and hide the cursor
setterm -cursor off
setterm -term linux -background black
setterm -term linux clear

# this is the path to the directory containing your videos
VIDEOPATH="/home/pi/video" 

# leave this alone
SERVICE="omxplayer"

# infinitely loop through any video files in VIDEOPATH 
while true; do
        if ps ax | grep -v grep | grep $SERVICE > /dev/null
        then
        sleep 1;
else
        for entry in $VIDEOPATH/*
        do
                clear
                omxplayer $entry > /dev/null
        done
fi
done
