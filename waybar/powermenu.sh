#!/bin/bash

entries="⏻ Shutdown\n Reboot\n Suspend\n󰍃 Logout\n Lock"

selected=$(echo -e "$entries" | wofi --dmenu \
  --width 250 --height 300 \
  --style ~/.config/wofi/power.css \
  -p "" \
  -n)

case $selected in
  *Shutdown) systemctl poweroff ;;
  *Reboot)   systemctl reboot ;;
  *Suspend)  systemctl suspend ;;
  *Logout)   hyprctl dispatch exit ;;
  *Lock)     hyprlock ;;
esac
