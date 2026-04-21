#!/bin/bash

set -e
echo "Starting Full Install..."

# 1. Install Yay if not present
if ! command -v yay &> /dev/null; then
    echo "Yay not found. Installing from AUR..."
    sudo pacman -S --needed --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si --noconfirm
    cd -
    rm -rf /tmp/yay
else
    echo "Yay is already installed."
fi

# 2. Filter out network-related configurations to avoid overwriting setup
echo "Filtering out network packages from packages.txt..."
if [ -f "../packages.txt" ]; then
    FILTERED_PACKAGES=$(grep -vE '^(iwd|networkmanager|network-manager-applet|wpa_supplicant|firewalld)$' ../packages.txt)
    
    # 3. Install packages
    echo "Installing packages..."
    echo "$FILTERED_PACKAGES" | yay -S --needed - --noconfirm
else
    echo "Warning: packages.txt not found in root directory! Skipping packages..."
fi

# 4. Copy configurations
echo "Copying configuration files to ~/.config..."
mkdir -p ~/.config
cp -r ../.config/* ~/.config/
cp ../.bashrc ~/.bashrc

echo "======================================"
echo "Full Installation complete!"
echo "Please restart your window manager or reboot for all changes to take effect."
echo "======================================"
