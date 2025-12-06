#/bin/bash -e

# TODO: Only mute audio sources

sinks=$(wpctl status | awk '/├─ Sources:/ {p=1; next} /(├─|└─)/ {p=0} p' | sed -n -E 's/^[[:space:]]*│[[:space:]]*\*?[[:space:]]*([0-9]+).*/\1/p')

for sink in $sinks; do
  wpctl set-mute $sink toggle
done
