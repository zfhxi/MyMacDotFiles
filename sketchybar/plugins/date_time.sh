#!/usr/bin/env bash

# sketchybar -m --set $NAME label="$(date '+%a %d %b %H:%M')"
sketchybar -m --set $NAME label="$(date '+ %a %m/%d@%H:%M')"
sketchybar -m --set $NAME label.font="Rajdhani:Bold:16.0"
