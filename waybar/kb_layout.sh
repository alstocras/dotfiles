#!/usr/bin/env bash
layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap' | head -1)
case "$layout" in
  "English (US)") echo " US" ;;
  "Russian (phonetic)") echo " RU" ;;
  *) echo " $layout" ;;
esac
