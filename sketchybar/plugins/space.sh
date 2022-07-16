#!/usr/bin/env bash

ICON_ARRAY=(         )
UNSELECTED_ICON_ARRAY=(         )
if [ $SELECTED == "true" ]; then
    sketchybar -m --set $NAME icon=${ICON_ARRAY[$SID-1]}
else
    sketchybar -m --set $NAME icon=${UNSELECTED_ICON_ARRAY[$SID-1]}
fi

space_applist=$(/opt/homebrew/bin/yabai -m query --windows --space $SID | jq -r '.[] | .app'| paste -sd 﫦 -)
if [[ $space_applist != "" ]]; then
  sketchybar -m --set $NAME label="$space_applist"
else
  sketchybar -m --set $NAME label="-"
fi
