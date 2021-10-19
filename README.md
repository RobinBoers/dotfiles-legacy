# dotfiles

My dotfiles for various programs and setups.

## Theming

The GTK theme is set using `xsettingsd`. This way I can have multiple window managers with each another GTK theme. 

I'm doing this because I have a Windows 98 clone, Unity clone and some other stuff configured, and I don't want to manually set the GTK theme each time I log into them.

I'm not sure how to set the QT theme without a graphical program, so that just stays breeze or KvGnome because I'm lazy and don't use that many QT applications anyway.

## Setups

I have different setups and configs for different use cases. These are the ones I use the most:

### Sway setup

My current setup. Adwaita, KvGnome for theming. Sworkstyle for dynamic workspace names, autotiling for autotiling (duh) and [swaybg-random](Scripts/swaybg-random.sh) for random wallpapers.

[More info](.config/sway)

![](.config/sway/screenshot.png)

### Qtile setup

I'm using the default panel in this setup. I customized it to use the frontend-delight color theme. I use gaps because I like them. Keybindings for most regular stuff. Also keybinded the media buttons using playerctl and the brightness stuff with xbacklight. Using KvGnome for Qt and Adwaita for GTK+. Using feh for the wallpaper and Adwaita icons.

[More info](.config/qtile)

![](.config/qtile/screenshot.png)

### Qtile setup (MacOS edition)

This version of my Qtile setup is exactly the same as the default version, but with a MacOS skin. It has a MacOS themed panel, blur effects, Spotlight theme for Rofi and rounded corners. KvGnome for QT and Adwaita for GTK+

[More info](.config/qtile-macos)

![](.config/qtile-macos/screenshot.png)

### Metacity session

I made a custom xsession using the Metacity window manager, DockBarX, tint2 and rofi. I wanted it to look like Unity. Ambiance GTK theme, KvAmbiance QT theme, Humanity icons.

**NOTE: The Rofi theme is currently broken due to a update. Not sure how to fix it yet :)**

[More info](usr/bin/)

![](usr/bin/screenshot.png)

### Openbox setup

I use the Yaru theme for openbox,  
the Yaru theme for GTK+, KvYaru for Qt and the Yaru icon theme. I like Yaru.

The dock (plank) is on the left like in Unity and for the wallpaper I'm using nitrogen.

[More info](.config/openbox)

![](.config/openbox/screenshot.png)

## Rofi themes

[Here's a list of all my Rofi themes and what their purpose is :D](.config/rofi/)

## Packagelist

I created a packagelist to list all the packages installed on my system and to easily reinstall later. To reinstall all packages in my current setup:

```
# pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort packages.txt))
```

To generate a (new) packagelist:

```
pacman -Qqe > packages.txt
```

## Linux Dev Environment

I use my system mostly for development, school and notes. I created a doc to describe my current dev environment based on Arch Linux.

[Linux Dev Environment](docs/dev-setup.md)

Inspired by [divyanshu013/linux-dev-setup](https://github.com/divyanshu013/linux-dev-setup).

-----

Made with <3 by me
