#/bin/bash -e

# TODO: Only mute audio sources

SINKS=$(wpctl status | awk '/├─ Sources:/ {p=1; next} /(├─|└─)/ {p=0} p' | sed -n -E 's/^[[:space:]]*│[[:space:]]*\*?[[:space:]]*([0-9]+).*/\1/p')

for SINK in $SINKS; do
  wpctl set-mute $SINK toggle
done
