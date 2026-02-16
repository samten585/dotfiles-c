#!/usr/bin/env bash
opts=" clipboard\n Color\n󰹑 Screenshot All\n󰨵 Screenshot Window\n󱣴 Screenshot Region"
target=$(echo -e "$opts" | rofi -theme /home/samer/.config/rofi/applets/type-1/style-1.rasi -dmenu -p 'Tools' -hover-select -me-select-entry '' -me-accept-entry MousePrimary)
case "$target" in
    " clipboard") cliphist list | rofi -dmenu -theme /home/samer/.config/rofi/applets/type-1/style-3.rasi -hover-select -me-select-entry '' -me-accept-entry MousePrimary | cliphist decode | wl-copy || MousePrimary | cliphist wipe;;
    " Color") hyprpicker -a ;;
    "󰹑 Screenshot All") hyprshot -m output -o ~/Pictures/screenshots/ ;;
    "󰨵 Screenshot Window") hyprshot -m window -o ~/Pictures/screenshots/ ;;
    "󱣴 Screenshot Region") hyprshot -m region -o ~/Pictures/screenshots/ ;;
esac

