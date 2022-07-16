#!/usr/bin/env bash

# osascript -e 'display notification "'"$NAME"'" with title "caffeinate" subtitle "切换"'
ICON_ARRAY=(         )
UNSELECTED_ICON_ARRAY=(         )
SPACE_NAMES=(code web research office enjoy more seven eight nine ten)
if [[ $(yabai -m query --displays | jq length) > 1 ]]
then
	# SPACE 7+: OTHER ICON
    SPACE_IDS=$(yabai -m query --displays --display 2 | jq '.spaces' |jq -r '.[]')
    for sid in ${SPACE_IDS[@]}; do
        EXIST_BARS=$(sketchybar --query bar |jq '.items' | jq -r '.[]')
        SPACE_NM=${SPACE_NAMES[$sid-1]}
        if [[ ! "${EXIST_BARS[@]}"  =~ "$SPACE_NM" ]]
        then
            # osascript -e 'display notification "'"$sid"'" with title "caffeinate" subtitle "切换"'
            # osascript -e 'display notification "'"$SPACE_NM"'" with title "caffeinate" subtitle "切换"'
            sketchybar -m --add space seven left \
                --set seven icon.highlight_color=0xff8CABC8 \
                --set seven associated_display=2 \
                --set seven associated_space=$sid \
                --set seven icon.padding_left=5 \
                --set seven icon.padding_right=2 \
                --set seven label.padding_right=5 \
                --set seven label.padding_left=0 \
                --set seven label.color=0xffeceff4 \
                --set seven background.color=0x00000000  \
                --set seven background.height=21 \
                --set seven background.padding_left=7 \
                --set seven update_freq=1 \
                --set seven click_script="yabai -m space --focus $sid" \
                --set seven label.font="Rajdhani:Bold:16.0" \
                --subscribe seven window_focus front_app_switched space_change title_change\
                --set seven script="~/.config/sketchybar/plugins/space2.sh" \
                # --set seven script="osascript -e 'display notification \"hello\" with title \"caffeinate\" subtitle \"切换\"'" \

        fi
        # osascript -e 'display notification "'"$sid"'" with title "caffeinate" subtitle "切换"'
    done
else
    # osascript -e 'display notification "'"$sid"'" with title "false" subtitle "切换"'
    :
fi