#!/usr/bin/env bash

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

case ${SOURCE} in
'com.apple.keylayout.ABC') LABEL='A' ;;
'com.apple.keylayout.WubixingKeyboard') LABEL='五' ;;
'com.apple.keylayout.PinyinKeyboard') LABEL='拼' ;;
esac

sketchybar --set $NAME label="$LABEL"
sketchybar -m --set $NAME label.padding_right=0
sketchybar -m --set $NAME label.padding_left=0 
sketchybar -m --set $NAME label.font="Rajdhani:Bold:16.0"
