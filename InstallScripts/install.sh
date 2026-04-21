#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

clear
echo "======================================"
echo " Arch Desktop Theme Pack Installer"
echo "======================================"
echo "1. Full install"
echo "2. Hyprland"
echo "3. Waybar"
echo "4. Wofi"
echo "5. Swaync"
echo "6. Kitty"
echo "q. Quit"
echo ""
read -rp "Choose an option: " choice

case "${choice,,}" in
    1) target="fullinstall.sh" ;;
    2) target="hyprlandinstall.sh" ;;
    3) target="waybarinstall.sh" ;;
    4) target="wofiinstall.sh" ;;
    5) target="swayncinstall.sh" ;;
    6) target="kittyinstall.sh" ;;
    q) echo "Goodbye."; exit 0 ;;
    *) echo "Invalid choice: $choice"; exit 1 ;;
esac

script_path="$SCRIPT_DIR/$target"
if [ ! -f "$script_path" ]; then
    echo "Installer not found: $script_path"
    exit 1
fi

chmod +x "$script_path"
clear
exec "$script_path"
