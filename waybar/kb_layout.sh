#!/usr/bin/env bash
layout=$(hyprctl devices | grep -m1 -B 6 "main: yes" | grep "active keymap:" | sed 's/.*active keymap: //')
case "$layout" in
  "English (US)") echo " US" ;;
  "Russian (phonetic)") echo " RU" ;;
  *) echo " $layout" ;;
esac
