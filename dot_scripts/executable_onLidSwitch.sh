#!/usr/bin/env sh

if [ $1 = "close" ]; then
  hyprctl keyword monitor "eDP-1, disable"
fi

if [ $1 = "open" ]; then
  hyprctl keyword monitor "eDP-1, 1920x1200@60, 0x0, 1"
fi

