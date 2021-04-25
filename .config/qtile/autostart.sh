#!/bin/sh

xcape -e 'Super_L=Alt_L|F1'

picom --experimental-backends &
lxsession &

nitrogen --restore &
nm-applet &
dunst &
#volumeicon &
