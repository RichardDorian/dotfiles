#/bin/bash -e

# TODO: Only mute audio sinks

SOURCES=$(wpctl status | awk '/├─ Sinks:/ {p=1; next} /(├─|└─)/ {p=0} p' | sed -n -E 's/^[[:space:]]*│[[:space:]]*\*?[[:space:]]*([0-9]+).*/\1/p')

for SOURCE in $SOURCES; do
  wpctl set-mute $SOURCE toggle
done
