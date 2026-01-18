#!/usr/bin/env sh

SOCKET="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

socat -u UNIX-CONNECT:"$SOCKET" - | while read -r line; do
  echo "$line"
  case "$line" in
    monitoradded*|monitorremoved*)
      ~/.scripts/onLidSwitch.sh
      ;;
  esac
done
