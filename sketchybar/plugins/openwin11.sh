#!/usr/bin/env bash

VM_NAME='Windows 11'
case "$1" in
  "click") 
    if [ "$(pgrep -x 'prl_vm_app')" == "" ]; then
        osascript -e 'tell app "System Events" to display dialog "'"$VM_NAME"' is not running, open it?"'\
        && open -a /Applications/Parallels\ Desktop.app && /usr/local/bin/prlctl start "$VM_NAME"\
        && sketchybar --set $NAME icon=""
    else
        osascript -e 'tell app "System Events" to display dialog "'"$VM_NAME"' is running, still close it?"'\
        &&  /usr/local/bin/prlctl stop "$VM_NAME" && osascript -e \
        'tell application "Parallels Desktop" to quit' && sketchybar --set $NAME icon=""
    fi
  ;;
  *) 
    if [ "$(pgrep -x 'prl_vm_app')" == "" ]; then
        sketchybar --set $NAME icon=""
    else
        sketchybar --set $NAME icon=""
    fi
    # osascript -e 'display notification "通知内容" with title "标题" subtitle "子标题"'
  ;;
esac