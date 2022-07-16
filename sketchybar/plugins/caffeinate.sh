#!/usr/bin/env bash

case "$1" in
  "click") 
    if [ "$(pgrep -x 'caffeinate')" = "" ]; then
        caffeinate & disown
        sketchybar --set $NAME icon=""
    else
        killall caffeinate
        sketchybar --set $NAME icon="﯈"
    fi
  ;;
  *) 
    if [ "$(pgrep -x 'caffeinate')" = "" ]; then
        sketchybar --set $NAME icon="﯈"
    else
        sketchybar --set $NAME icon=""
    fi
  ;;
esac
