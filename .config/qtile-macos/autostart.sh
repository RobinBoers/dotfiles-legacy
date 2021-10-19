#!/bin/sh

#nitrogen --restore &
feh --randomize --bg-fill /home/robin/Pictures/wallpapers/*
#feh --bg-fill /home/robin/Pictures/wallpapers/macos-light.jpg

#light-locker --no-lock-on-lid &

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
gsettings set org.gnome.desktop.interface icon-theme "Adwaita"

gtk-theme-switch2 /usr/share/themes/Adwaita

xsettingsd -c /home/robin/.config/xsettingsd/qtile &

#plank &

trayer --edge top --align right --SetDockType false --width 10 --transparent true --height 25 --distancefrom right --distance 310 --tint 1b1c1d --alpha 185 &

~/.xprofile
