#!/bin/bash
set -e
echo "Installing Kitty configurations..."
yay -S --needed --noconfirm kitty
mkdir -p ~/.config/kitty
cp -r ../.config/kitty/* ~/.config/kitty/
echo "Kitty successfully configured!"
