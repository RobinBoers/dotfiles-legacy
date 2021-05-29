export QT_QPA_PLATFORMTHEME=qt5ct

xcape -e 'Super_L=Alt_L|F1'

nitrogen --restore &
picom -Cc &
lxsession &
nm-applet &
rsibreak &
dunst &
opensnap &

redshift &

plank &
polybar top &
#tint2 &

xinput set-prop "Synaptics TM3336-001" "libinput Natural Scrolling Enabled" 1
xinput set-prop "Synaptics TM3336-001" "libinput Tapping Enabled" 1

xset b off
