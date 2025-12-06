#!/bin/bash

WPAPERD_DIR="$HOME/.local/state/wpaperd/wallpapers"
HYPRLOCK_CONF="$HOME/.config/hypr/hyprlock.conf"
HYPRLOCK_TEMP_CONF="$HOME/.config/hypr/hyprlock.conf.tmp"
> "$HYPRLOCK_TEMP_CONF"

if [ ! -d "$WPAPERD_DIR" ]; then
    echo "Error: wallpaperd directory not found at $WPAPERD_DIR" >&2
    exit 1
fi

find "$WPAPERD_DIR" -type l | while read -r monitor; do
	echo "background {" >> "$HYPRLOCK_TEMP_CONF"
	echo "    monitor = $(basename $monitor)" >> "$HYPRLOCK_TEMP_CONF"
	echo "    path = $monitor" >> "$HYPRLOCK_TEMP_CONF"
	echo "    blur_passes = 2" >> "$HYPRLOCK_TEMP_CONF"
	echo "    reload_time = 0" >> "$HYPRLOCK_TEMP_CONF"
	echo "}" >> "$HYPRLOCK_TEMP_CONF"
	echo "" >> "$HYPRLOCK_TEMP_CONF"
done

cat "$HYPRLOCK_CONF" >> "$HYPRLOCK_TEMP_CONF"
cat "$HYPRLOCK_TEMP_CONF"
