#!/bin/bash
set -e
echo "Installing Hyprland configurations..."
mkdir -p ~/.config/hypr
cp -r ../.config/hypr/* ~/.config/hypr/
echo "Hyprland successfully configured!"
