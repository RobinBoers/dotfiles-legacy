export QT_QPA_PLATFORMTHEME=qt5ct

xcape -e 'Super_L=Alt_L|F1'

nitrogen --restore &
picom &
lxsession &
nm-applet &
rsibreak &
dunst &
opensnap &

redshift &
xfce4-power-manager &

plank &
#polybar top &
#/home/robin/Scripts/status.sh | lemonbar -g 1920x21 -B "#c81d1c25" -f "Ubuntu:size=11" &

#/home/robin/Scripts/status.sh | lemonbar -g 1920x21 -B "#c81d1c25" -f "Ubuntu:size=11" -f 'Font Awesome 5 Free' -f 'Font Awesome 5 Brands' -f 'Font Awesome 5 Free Solid' &

/home/robin/Scripts/status.sh | lemonbar -g 1920x25 -B "#ff1d1c25" -f "Ubuntu:size=11" -f 'Font Awesome 5 Free' -f 'Font Awesome 5 Brands' -f 'Font Awesome 5 Free Solid' & 

#tint2 &

xinput set-prop "Synaptics TM3336-001" "libinput Natural Scrolling Enabled" 1
xinput set-prop "Synaptics TM3336-001" "libinput Tapping Enabled" 1
xinput set-prop "Synaptics TM3336-001" "libinput Accel Speed" .2

setxkbmap -layout us -variant intl
xset b off
