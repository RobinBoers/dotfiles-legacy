# Get same aliases as in bash_aliases
source ~/.bash_aliases

export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$PATH:$HOME/.local/bin/"
export EDITOR=nvim

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
end

export TERM=xterm-256color
