#!/bin/bash -e

# Tell hyprlock to update the wallpaper
hyprlock=$(pgrep -f /usr/bin/hyprlock)

if [[ -n "$hyprlock" ]]; then
  kill -USR2 "$hyprlock"
fi
