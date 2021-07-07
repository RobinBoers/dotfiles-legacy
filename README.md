# dotfiles

My dotfiles for various programs and setups.

To reinstall all packages in my current setup:

```
# pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort packages.txt))
```

### Metacity session

I made a custom xsession using the Metacity window manager, DockBarX, tint2 and rofi. I wanted it to look like Unity. Ambiance GTK theme, KvAmbiance QT theme, Humanity icons.

[More info](usr/bin/)

### Openbox setup

I use the Yaru theme for openbox,  
the Yaru theme for GTK+ and the Yaru icon theme. I like Yaru.

The dock (plank) is on the left like in Unity and for the wallpaper I'm using nitrogen.

Dependencies: `firefox, alacritty, pactl, xbacklight, playerctl, rofi, dunst, lxsession, nitrogen, betterlockscreen, xcape, lxappearance, lemonbar, polybar`

[More info](.config/openbox)

### i3 setup

For my i3 setup I use the default bar/panel (i3bar) that I customized a bit. I also added some keybindings for stuff. I use both dmenu and rofi. I made the themes for both match the i3bar theme. Also using nitrogen for the wallpaper here. For both the GTK+ and QT theme Im using Breeze. Terminal is Konsole. Breeze icons.

Dependencies: `nm-applet, rofi, dmenu, firefox, alacritty, nitrogen, pactl, dmenu, betterlockscreen, xcape`

[More info](.config/i3)

### Qtile setup

Also using the default panel in this setup. I customized it to use the frontend-delight color theme. I use gaps because I like them. Keybindings for most regular stuff. Also keybinded the media buttons using playerctl and the brightness stuff with xbacklight. Using kvantum KvGnome for QT and Adwaita dark for GTK+. Using nitrogen for the wallpaper and using Breeze icons.

Dependencies: `firefox, alacritty, pactl, xbacklight, playerctl, rofi, dunst, lxsession, nitrogen, betterlockscreen, xcape`

[More info](.config/qtile)

### AwesomeWM setup

I'm using Awesome as a floating window manager. Customized to use the frontend-delight color scheme. Taskbar at the bottom with a systray and a clock.

Dependencies: `firefox, alacritty, lxsession, nitrogen, xcape`

[More info](.config/awesome)

### Rofi themes

[Here's a list of all my Rofi themes and what their purpose is :D](.config/rofi/)

Made with <3 by me :)
