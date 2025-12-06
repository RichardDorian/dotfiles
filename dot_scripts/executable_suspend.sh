#!/bin/bash -e

# Only suspend if on battery

battery_status=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$battery_status" == "Discharging" ]]; then
  systemctl suspend
fi

