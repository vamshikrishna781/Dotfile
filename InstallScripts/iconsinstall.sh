#!/bin/bash
set -e
echo "Installing Icons and Fonts..."

if [ -f "../packages.txt" ]; then
    echo "Extracting font and icon packages from packages.txt..."
    # Extract packages matching 'nerd', 'icon', or 'font'
    PACKAGES=$(grep -E 'nerd|icon|font' ../packages.txt || true)
    
    if [ -n "$PACKAGES" ]; then
        echo "Installing the following fonts and icons:"
        echo "$PACKAGES"
        echo "$PACKAGES" | yay -S --needed - --noconfirm
    else
        echo "No font or icon packages found in packages.txt. Installing defaults..."
        yay -S --needed --noconfirm qogir-icon-theme ttf-nerd-fonts-symbols
    fi
else
    echo "packages.txt not found. Installing defaults..."
    yay -S --needed --noconfirm qogir-icon-theme ttf-nerd-fonts-symbols
fi

echo "Icons and Fonts successfully installed!"
