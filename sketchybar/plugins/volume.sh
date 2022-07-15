#!/bin/bash

LABEL=$(osascript -e 'output volume of (get volume settings)')%
MUTE=$(osascript -e 'output muted of (get volume settings)')

if [[ "$MUTE" = true ]]; then
  ICON="婢"
  LABEL="0%"
else
  ICON="墳"
fi

sketchybar -m --set $NAME label=$LABEL\
                          icon=${ICON}
sketchybar -m --set $NAME label=$LABEL
sketchybar -m --set $NAME label.padding_right=10 
sketchybar -m --set $NAME label.padding_left=0 
sketchybar -m --set $NAME label.font="Rajdhani:Bold:16.0"