#!/bin/bash -e

# Tell hyprlock to update the wallpaper
HYPRLOCK=$(pgrep -f /usr/bin/hyprlock)

if [[ -n "$HYPRLOCK" ]]; then
  kill -USR2 "$HYPRLOCK"
fi
