#!/usr/bin/env bash

case "$SENDER" in
  "routine"|"forced") 
  ;;
  "mouse.entered") 
    osascript -e 'tell application "System Events" to keystroke "d" using {control down, option down, command down}'
  ;;
  "mouse.exited"|"mouse.exited.global") 
    # osascript -e 'tell application "System Events" to keystroke "d" using {control down, option down, command down}'
    # osascript -e 'display notification "'"$SENDER"'" with title "caffeinate" subtitle "切换"'
    osascript -e 'tell application "System Events" to keystroke "H" using {command down}'
  ;;
  "mouse.clicked") 
    # osascript -e 'tell application "System Events" to keystroke "d" using {control down, option down, command down}'
  ;;
  *) 
  ;;
esac
# osascript -e 'display notification "'"$SENDER"'" with title "caffeinate" subtitle "切换"'