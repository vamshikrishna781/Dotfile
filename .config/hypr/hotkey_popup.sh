#!/bin/bash
# Get binds, format them, and show in wofi with wal theme
grep '^bind' ~/.config/hypr/hyprland.conf | \
sed 's/bind = //g' | \
wofi --show dmenu \
--prompt "Keybinds:" \
--conf ~/.config/wofi/config \
--style ~/.config/wofi/style.css
