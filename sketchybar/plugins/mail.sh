#!/bin/bash

RUNNING=$(osascript -e 'if application "Mail" is running then return 0')
MAIL=􀍜
MAIL_OPEN=􀍜
COUNT=0
case "$1" in
  "click") 
        osascript -e 'tell application "Mail" to activate' 
        # osascript -e 'display notification "'"$SENDER"'" with title "caffeinate" subtitle "切换"'
    ;;
    *)
        if [ "$RUNNING" == "0" ]; then
          COUNT=$(osascript -e 'tell application "Mail" to return the unread count of inbox')
          if [ "$COUNT" -gt "0" ]; then
            sketchybar --set $NAME label="$COUNT" icon=$MAIL
          else
            sketchybar --set $NAME label="$COUNT" icon=$MAIL_OPEN
          fi
        else
            osascript -e 'tell application "Mail" to launch' \
            -e 'tell application "System Events" to set visible of process "Mail" to false'
            ~/.config/sketchybar/plugins/mail.sh
        #   sketchybar --set $NAME label="!" icon=$MAIL
        fi
    ;;
esac
    