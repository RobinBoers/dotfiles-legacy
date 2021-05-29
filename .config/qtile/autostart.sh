#!/bin/sh

nitrogen --restore &

xcape -e 'Super_L=Alt_L|F1'

export QT_QPA_PLATFORMTHEME=qt5ct

picom --experimental-backends -Cc &
lxsession &
redshift &

# Mouse stuff (using Arch now btw.)
xinput set-prop "Synaptics TM3336-001" "libinput Natural Scrolling Enabled" 1
xinput set-prop "Synaptics TM3336-001" "libinput Tapping Enabled" 1

nm-applet &
dunst &

rsibreak &

#plank &
#volumeicon &

xset b off
