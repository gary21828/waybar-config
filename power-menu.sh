#!/usr/bin/env bash
# Simple power menu for Waybar (Niri-friendly)
# Requires: fuzzel or rofi (falls back to a basic prompt)

choice=$(printf "󰁥  Shutdown\n󰐉  Reboot\n󰑃  Log out\n󰔄  Suspend\n󰂲  Hibernate\n󰐺  Cancel" | fuzzel --dmenu --prompt "Power: " --width 20 --lines 6 2>/dev/null || \
          printf "󰁥  Shutdown\n󰐉  Reboot\n󰑃  Log out\n󰔄  Suspend\n󰂲  Hibernate\n󰐺  Cancel" | rofi -dmenu -p "Power: " -theme-str 'window {width: 20%;}' 2>/dev/null)

case "$choice" in
    *Shutdown*) systemctl poweroff ;;
    *Reboot*)   systemctl reboot ;;
    *Log\ out*) niri msg action quit || loginctl terminate-session "$XDG_SESSION_ID" ;;
    *Suspend*)  systemctl suspend ;;
    *Hibernate*) systemctl hibernate ;;
    *)          exit 0 ;;
esac
