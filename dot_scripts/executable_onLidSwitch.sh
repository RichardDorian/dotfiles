#!/usr/bin/env sh

internalMonitor="eDP-1"

monitorCount=$(hyprctl monitors all -j | jq length)

status="$1"

if [ "$#" -ne 1 ]; then
  status=$(awk '{print $2}' /proc/acpi/button/lid/LID*/state)
fi

if [ "$status" = "closed" ] && [ "$monitorCount" -gt "1" ]; then
  hyprctl keyword monitor "$internalMonitor, disable"
fi

if [ "$status" = "open" ]; then
  hyprctl keyword monitor "$internalMonitor, 1920x1200@60, 0x0, 1" > /dev/null
fi
