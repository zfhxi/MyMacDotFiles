# W I N D O W  T I T L E 
SPACE_COUNT=$(/opt/homebrew/bin/yabai -m query --spaces | jq 'length')
ICON_ARRAY=(         )
# icon_array=(         )
applist=""
for(( i=1;i<=$SPACE_COUNT;i++)) do
    space_applist=$(/opt/homebrew/bin/yabai -m query --windows --space $i | jq -r '.[] | .app'| paste -sd  -)
    if [[ $space_applist != "" ]]; then
        # space_applist=''
        applist="$applist ${ICON_ARRAY[$i-1]} $space_applist"
    fi
    # applist="$applist ${ICON_ARRAY[$i-1]} $space_applist"
done
sketchybar -m --set applist label="$applist"
