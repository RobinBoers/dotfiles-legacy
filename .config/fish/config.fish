# Get same aliases as in bash_aliases
source ~/.bash_aliases

export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$PATH:$HOME/.local/bin/"
export EDITOR=nvim

# Set colorscheme
theme.sh frontend-delight

# Colorscript on startup yay
colorscript -r

# Starship promt (cross shell)
starship init fish | source
