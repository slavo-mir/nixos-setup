#!/usr/bin/env bash
set -euo pipefail
n="$1"
tree=$(swaymsg -t get_tree)
fid=$(echo "$tree" | jq '[.. | objects | select(.focused==true)][0].id')
target=$(echo "$tree" | jq --argjson fid "$fid" --argjson n "$n" '
  [.. | objects | select(.nodes? and any(.nodes[]?; .id==$fid))][0].nodes[$n-1].id // empty
')
if [ -n "$target" ] && [ "$target" != "null" ]; then
  swaymsg "[con_id=$target] focus"
fi
