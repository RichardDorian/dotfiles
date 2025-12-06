#/bin/bash -e

# TODO: Only mute audio sinks

sources=$(wpctl status | awk '/├─ Sinks:/ {p=1; next} /(├─|└─)/ {p=0} p' | sed -n -E 's/^[[:space:]]*│[[:space:]]*\*?[[:space:]]*([0-9]+).*/\1/p')

for source in $sources; do
  wpctl set-mute $source toggle
done
