#!/bin/bash -e

# Only reduce brightness if on battery
BATTERY_STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$1" == "timeout" && "$BATTERY_STATUS" == "Discharging" ]]; then
  brightnessctl -s set 10
fi

if [[ "$1" == "resume" && "$BATTERY_STATUS" == "Discharging" ]]; then
  brightnessctl -r
fi
