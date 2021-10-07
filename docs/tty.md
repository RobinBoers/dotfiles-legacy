# TTY setup

Currently I'm not using a display manager. Just the default TTY and I can start X when I need a graphical program. This is how I customize my TTY.

## Font and color scheme

The default font is quite ugly, so I installed terminus.

```bash
sudo pacman -S terminus
```

The default font can be set in `/etc/vconsole.conf`. 

For quite some time I just used the default colors, but recently I found out you can customize them using a simple piece of code in your `config.fish` or `bashrc`. 

```fish
if test "$TERM" = "linux"
    echo -en "\e]P0000000" #black
    echo -en "\e]P8586e75" #darkgrey
    echo -en "\e]P1e75e4f" #darkred
    echo -en "\e]P9f74319" #red
    echo -en "\e]P274ec4c" #darkgreen
    echo -en "\e]PA565747" #green
    echo -en "\e]P38c735b" #brown
    echo -en "\e]PBfa771d" #yellow
    echo -en "\e]P43393ca" #darkblue
    echo -en "\e]PC2c70b7" #blue
    echo -en "\e]P5c397d8" #darkmagenta
    echo -en "\e]PDf02e4f" #magenta
    echo -en "\e]P64fbce6" #darkcyan
    echo -en "\e]PE3ca1a6" #cyan
    echo -en "\e]P7adadad" #lightgrey
    echo -en "\e]PFffffff" #white
end
```

This color scheme is based on frontend delight. The color scheme I also use in other applications and Alacritty (my terminal).

## Tmux config

Tmux is a cool way to have "windows" in the TTY. It's like a text based window manager. My tmux config uses keybindings similair to my Openbox and Qtile configs. This does require a custom keymap, which is also set in `/etc/vconsole.conf`.