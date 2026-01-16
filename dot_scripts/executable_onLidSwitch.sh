#!/usr/bin/env sh


status="$1"

if [ "$#" -ne 1 ]; then
  status=$(awk '{print $2}' /proc/acpi/button/lid/LID*/state)
fi

echo $status

if [ "$status" = "closed" ]; then
  hyprctl keyword monitor "eDP-1, disable"
fi

if [ "$status" = "open" ]; then
  hyprctl keyword monitor "eDP-1, 1920x1200@60, 0x0, 1"
fi
