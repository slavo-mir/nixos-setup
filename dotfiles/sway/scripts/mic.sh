#!/usr/bin/env bash
info=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@)
is_muted=$(echo "$info" | grep -c "MUTED")
if [ "$is_muted" -eq 1 ]; then
    content="        MIC MUTED        "
else
    content="       MIC UNMUTED       "
fi
notify-send -a "system" \
    -h string:x-canonical-private-synchronous:osd-notification \
    -h string:category:status2 \
    "" "$content"
