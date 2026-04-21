#!/bin/bash
set -e
echo "Installing Wofi configurations..."
yay -S --needed --noconfirm wofi
mkdir -p ~/.config/wofi
cp -r ../.config/wofi/* ~/.config/wofi/
echo "Wofi successfully configured!"
