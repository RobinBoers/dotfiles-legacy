#!/usr/bin/env bash

eval "$(xdotool getmouselocation --shell)"
xdotool mousemove 0 50

python /home/robin/Scripts/hud.py

xdotool mousemove --screen $SCREEN $X $Y

exit
