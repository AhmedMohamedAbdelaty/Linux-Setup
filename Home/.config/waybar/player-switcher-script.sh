#!/bin/bash

# Get the list of players
players=$(playerctl -l)

# Check if any players are available
if [ -z "$players" ]; then
    notify-send "No players found" "Please start a media player and try again."
    exit 1
fi

# Use rofi to select a player
selected_player=$(echo "$players" | rofi -dmenu -p "Select player")

# Check if a player was selected
if [ -n "$selected_player" ]; then
    # Switch to the selected player and toggle play/pause
    playerctl -p "$selected_player" play-pause
    notify-send "Switched to $selected_player" "Player $(playerctl -p "$selected_player" status)"
else
    notify-send "No player selected" "Operation cancelled"
fi
