#nitrogen --restore &
hsetroot -solid "#008080"

# tint2 &
# dockx &

# plank &

gsettings set org.gnome.desktop.interface gtk-theme "Windows-95-1.0"
gsettings set org.gnome.desktop.interface icon-theme "Classic95"

gtk-theme-switch2 "/home/robin/.themes/Windows-95-1.0"

xsettingsd -c /home/robin/.config/xsettingsd/openbox &

lxpanel & 

#polybar top &
#/home/robin/Scripts/status.sh | lemonbar -g 1920x21 -B "#c81d1c25" -f "Ubuntu:size=11" &

#/home/robin/Scripts/status.sh | lemonbar -g 1920x21 -B "#c81d1c25" -f "Ubuntu:size=11" -f 'Font Awesome 5 Free' -f 'Font Awesome 5 Brands' -f 'Font Awesome 5 Free Solid' &

#/home/robin/Scripts/status.sh | lemonbar -g 1920x25 -B "#ff1d1c25" -f "Ubuntu:size=11" -f 'Font Awesome 5 Free' -f 'Font Awesome 5 Brands' -f 'Font Awesome 5 Free Solid' &
