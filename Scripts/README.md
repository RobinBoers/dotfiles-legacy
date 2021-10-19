# Scripts

This folder contains scripts I'm using often or that are used in my setups.

## HUD

Scripts for the HUD. Based on [mate-hud](https://github.com/ubuntu-mate/mate-hud).

- **hud.py**: Script to display the HUD. Uses the HUD theme for my metacity session.
- **hud-ob.py**: Uses the [ob](../.config/rofi/ob.rasi) theme.
- **hud-qtile.py**: Uses the [qmenu](../.config/rofi/qmenu.rasi) theme.
- **hud-service.py**: Needs to run in the background in order for the HUD to function.

- **hud.sh**: Wrapper script for my Metacity session. Moves the cursor to the side of the screen to show DockbarX when it has autohide enabled, and after the hud is used, moves the cursor back.

##  QR Screenshot

This script is used to capture a portion of the screen, and pipe it into zbar. That way you can scan QR codes displayed on your screen. It has two variants:

- **qr-screenshot.sh**: Version for Xorg.
- **qr-screenshot-wayland.sh**: Version for wayland.

## BBC micro:bit

Scripts to manage the BBC micro:bit mini computer.

- **micromount.sh**: Script to mount and unmount the BBC micro:bit.
- **uflash.py**: Script to convert python files into .hex files and flash them to the BBC micro:bit.

## Other

- **reboot.sh**: Prompt to reboot the computer.
- **shutdown.sh**: Prompt to shutdown the computer.
- **status.sh**: Input for lemonbar.

