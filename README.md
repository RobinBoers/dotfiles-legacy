# dotfiles

My dotfiles for various programs and setups.

To reinstall all packages in my current setup:

```
# pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort packages.txt))
```

### Qtile setup

Also using the default panel in this setup. I customized it to use the frontend-delight color theme. I use gaps because I like them. Keybindings for most regular stuff. Also keybinded the media buttons using playerctl and the brightness stuff with xbacklight. Using Kvantum Yaru for Qt and Yaru for GTK+. Using nitrogen for the wallpaper and using Suru icons.

[More info](.config/qtile)

![](.config/qtile/screenshot.png)

### Qtile setup (MacOS edition)

This version of my Qtile setup is exactly the same as the default version, but with a MacOS skin. It has a MacOS themed panel, blur effects, Spotlight theme for Rofi and rounded corners.

[More info](.config/qtile-macos)

![](.config/qtile-macos/screenshot.png)

### Metacity session

I made a custom xsession using the Metacity window manager, DockBarX, tint2 and rofi. I wanted it to look like Unity. Ambiance GTK theme, KvAmbiance QT theme, Humanity icons.

[More info](usr/bin/)

![](usr/bin/screenshot.png)

### Openbox setup

I use the Yaru theme for openbox,  
the Yaru theme for GTK+, KvYaru for Qt and the Yaru icon theme. I like Yaru.

The dock (plank) is on the left like in Unity and for the wallpaper I'm using nitrogen.

[More info](.config/openbox)

![](.config/openbox/screenshot.png)

### i3 setup

For my i3 setup I use the default bar/panel (i3bar) that I customized a bit. I also added some keybindings for stuff. I use both dmenu and rofi. I made the themes for both match the i3bar theme. Also using nitrogen for the wallpaper here. For both the GTK+ and QT theme Im using Breeze. Terminal is Konsole. Breeze icons.

[More info](.config/i3)

![](.config/i3/screenshot.png)

### Rofi themes

[Here's a list of all my Rofi themes and what their purpose is :D](.config/rofi/)

Made with <3 by me :)
