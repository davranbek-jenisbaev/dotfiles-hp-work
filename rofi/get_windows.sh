#!/bin/bash

i=1

i3-msg -t get_tree | jq -r '.. | select(.window_type?) | .name, .window_properties.class' | while IFS= read -r name && IFS= read -r class; do
  echo -e "$i\0icon\x1f${class,,}"
  i=$((i + 1))
done
