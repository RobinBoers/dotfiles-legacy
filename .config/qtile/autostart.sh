#!/bin/sh

feh --randomize --bg-fill /home/robin/Pictures/wallpapers/*

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
gsettings set org.gnome.desktop.interface icon-theme "Adwaita"

gtk-theme-switch2 /usr/share/themes/Adwaita

xsettingsd -c /home/robin/.config/xsettingsd/qtile &


~/.xprofile
