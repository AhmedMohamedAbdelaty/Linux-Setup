#!/bin/bash

# List all notifications using dunstctl
notifications=$(dunstctl history | jq -r '.data[] | "\(.summary): \(.body)"')

# Display the notifications in a rofi menu
selected=$(echo "$notifications" | rofi -dmenu -p "Notifications")

# If a notification is selected, show its details
if [ -n "$selected" ]; then
    notify-send "Notification Details" "$selected"
fi
