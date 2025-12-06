#!/bin/bash -e

# Only reduce brightness if on battery

battery_status=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$1" == "timeout" && "$battery_status" == "Discharging" ]]; then
  brightnessctl -s set 10
fi

if [[ "$1" == "resume" && "$battery_status" == "Discharging" ]]; then
  brightnessctl -r
fi
