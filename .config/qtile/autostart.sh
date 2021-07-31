#!/bin/sh

nitrogen --restore &

xcape -e 'Super_L=Alt_L|F1'
xcape -e 'Alt_L=Control_L|Alt_L|Shift_L|F9'

export QT_QPA_PLATFORMTHEME=qt5ct

picom &
lxsession &
redshift &

# Mouse stuff (using Arch now btw.)
xinput set-prop "Synaptics TM3336-001" "libinput Natural Scrolling Enabled" 1
xinput set-prop "Synaptics TM3336-001" "libinput Tapping Enabled" 1
#xinput set-prop "Synaptics TM3336-001" "libinput Accel Speed" .2
setxkbmap -layout us -variant intl

nm-applet &
dunst &

rsibreak &

#plank &
volumeicon &

xset b off

if [ -n "$GTK_MODULES" ]
then
	  GTK_MODULES="$GTK_MODULES:unity-gtk-module"
  else
	    GTK_MODULES="unity-gtk-module"
fi

if [ -z "$UBUNTU_MENUPROXY" ]
then
	  UBUNTU_MENUPROXY=1
fi

python /home/robin/Scripts/hud-service.py &
