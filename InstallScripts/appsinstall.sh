#!/bin/bash
set -e

echo "======================================"
echo " Optional Applications Installer"
echo "======================================"
echo "You will be prompted to install various optional applications."
echo "Press 'y' for Yes or 'n' for No (default is No)."
echo ""

install_app() {
    local app_name=$1
    local package_name=$2
    read -rp "Do you want to install $app_name? (y/N): " choice
    if [[ "$choice" =~ ^[Yy]$ ]]; then
        echo "Installing $app_name..."
        yay -S --needed --noconfirm $package_name
    else
        echo "Skipping $app_name."
    fi
    echo ""
}

install_app "Google Chrome" "google-chrome"
install_app "Firefox" "firefox"
install_app "Discord" "discord"
install_app "Microsoft Teams" "teams-for-linux"
install_app "OBS Studio" "obs-studio"
install_app "Virtual Machine Manager (virt-manager, libvirt, qemu-desktop)" "virt-manager libvirt qemu-desktop"
install_app "Visual Studio Code" "visual-studio-code-bin"
install_app "VLC Media Player" "vlc"
install_app "Spotify" "spotify-launcher"
install_app "LibreOffice" "libreoffice-fresh"
install_app "Wireshark" "wireshark-qt"

echo "======================================"
echo "Optional Applications installation process finished!"
