#!/bin/bash
set -e
echo "Installing Waybar and dependencies..."
yay -S --needed --noconfirm waybar pywal
mkdir -p ~/.config/waybar
cp -r ../.config/waybar/* ~/.config/waybar/
echo "Waybar successfully configured!"
