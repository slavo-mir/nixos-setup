#!/usr/bin/env bash
if [ ! -z "$1" ]; then
    brightnessctl set "$1" > /dev/null
fi
val=$(brightnessctl -m | cut -d, -f4 | tr -d '%')
bar_size=20
filled=$(( val * bar_size / 100 ))
unfilled=$(( bar_size - filled ))
bar=$(printf "%${filled}s" | tr ' ' '#')$(printf "%${unfilled}s" | tr ' ' '-')
perc=$(printf "%3d%%" "$val")
notify-send -a "system" \
    -h string:x-canonical-private-synchronous:osd-notification \
    -h string:category:status1 \
    "" "[$bar] $perc"
