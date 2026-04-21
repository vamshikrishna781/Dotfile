#!/bin/bash
set -e
echo "Installing Swaync configurations..."
yay -S --needed --noconfirm swaync
mkdir -p ~/.config/swaync
cp -r ../.config/swaync/* ~/.config/swaync/
echo "Swaync successfully configured!"
