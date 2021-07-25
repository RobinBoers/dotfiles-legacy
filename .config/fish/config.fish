# Get same aliases as in bash_aliases
source ~/.bash_aliases

export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$PATH:$HOME/.local/bin/"
export EDITOR=nvim
export TERM=xterm-256color

#set -l RANDOM_ASCII (random choice turtle milk stegosaurus eyes)

# Set colorscheme
#theme.sh frontend-delight

# Colorscript on startup yay
#colorscript -r

# Cool thingie (colored dragon saying something cool)
#fortune | cowsay -f $RANDOM_ASCII -T | lolcat

# Fetch message
#neofetch
fm6000 -c cyan --r -n

# Starship promt (cross shell)
starship init fish | source

# Thingie on startup :)
function fish_greeting
end

funcsave fish_greeting
