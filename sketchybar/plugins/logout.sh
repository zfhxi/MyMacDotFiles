#!/usr/bin/env bash

case "$1" in
  "click") 
    osascript -e 'tell app "System Events" to display dialog "Are you sure you want to logout?"' \
    && osascript -e 'tell application "System Events"' -e 'log out' -e 'keystroke return' -e end
  ;;
  *) 
  ;;
esac