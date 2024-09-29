alias neofetch='fastfetch'

# source antidote
source /home/ahmed/.antidote/antidote.zsh

# Define missing ZLE widgets
zle -N insert-unambiguous-or-complete
zle -N menu-search
zle -N recent-paths

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

