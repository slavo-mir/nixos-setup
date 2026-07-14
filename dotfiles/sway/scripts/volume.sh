#!/usr/bin/env bash
info=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
volume=$(echo "$info" | awk '{print $2 * 100}' | cut -d. -f1)
bar_size=20
filled=$(( volume * bar_size / 100 ))
[ $filled -gt $bar_size ] && filled=$bar_size
unfilled=$(( bar_size - filled ))
bar=$(printf "%${filled}s" | tr ' ' '#')$(printf "%${unfilled}s" | tr ' ' '-')
perc=$(printf "%3d%%" "$volume")
notify-send -a "system" \
    -h string:x-canonical-private-synchronous:osd-notification \
    -h string:category:status3 \
    "" "[$bar] $perc"
