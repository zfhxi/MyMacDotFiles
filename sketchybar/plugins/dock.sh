#!/usr/bin/env bash

case "$1" in
  "click") 
    osascript -e 'tell application "System Events" to keystroke "d" using {control down, option down, command down, shift down}'
    # defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
    # defaults delete com.apple.Dock autohide-delay && killall Dock
  ;;
  *) 
  ;;
esac