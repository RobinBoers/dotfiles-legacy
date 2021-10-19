# Get same aliases as in bash_aliases
source ~/.bash_aliases

export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$PATH:$HOME/.local/bin/"
export EDITOR=nvim
export GTK_OVERLAY_SCROLLING=1
export MOZ_DBUS_REMOTE=1

#set -l RANDOM_ASCII (random choice turtle milk stegosaurus eyes)

# Set colorscheme
#theme.sh frontend-delight

# Colorscript on startup yay
#colorscript -r

# Cool thingie (colored dragon saying something cool)
#fortune | cowsay -f $RANDOM_ASCII -T | lolcat

# Fetch message
#neofetch
#fm6000 -c cyan --r -n

# Starship promt (cross shell)
starship init fish | source

# asdf
source /opt/asdf-vm/asdf.fish

# Thingie on startup :)
function fish_greeting
end

funcsave fish_greeting

function reload_gtk_theme
  set theme (gsettings get org.gnome.desktop.interface gtk-theme)
  gsettings set org.gnome.desktop.interface gtk-theme ''
  sleep 1
  gsettings set org.gnome.desktop.interface gtk-theme $theme
end

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

    set cursor_style_default 0 # hardware cursor (blinking)
    set cursor_style_invisible 1 # hardware cursor (blinking)
    set cursor_style_underscore 2 # hardware cursor (blinking)
    set cursor_style_lower_third 3 # hardware cursor (blinking)
    set cursor_style_lower_half 4 # hardware cursor (blinking)
    set cursor_style_two_thirds 5 # hardware cursor (blinking)
    set cursor_style_full_block_blinking 6 # hardware cursor (blinking)
    set cursor_style_full_block 16 # software cursor (non-blinking)

    set cursor_background_black 0 # same color 0-15 and 128-infinity
    set cursor_background_blue 16 # same color 16-31
    set cursor_background_green 32 # same color 32-47
    set cursor_background_cyan 48 # same color 48-63
    set cursor_background_red 64 # same color 64-79
    set cursor_background_magenta 80 # same color 80-95
    set cursor_background_yellow 96 # same color 96-111
    set cursor_background_white 112 # same color 112-127

    set cursor_foreground_default 0 # same color as the other terminal text
    set cursor_foreground_cyan 1
    set cursor_foreground_black 2
    set cursor_foreground_grey 3
    set cursor_foreground_lightyellow 4
    set cursor_foreground_white 5
    set cursor_foreground_lightred 6
    set cursor_foreground_magenta 7
    set cursor_foreground_green 8
    set cursor_foreground_darkgreen 9
    set cursor_foreground_darkblue 10
    set cursor_foreground_purple 11
    set cursor_foreground_yellow 12
    set cursor_foreground_white 13
    set cursor_foreground_red 14
    set cursor_foreground_pink 15

    echo -e "\e[?16;0;15c" # only seems to work in tty
end

export TERM=xterm-256color
