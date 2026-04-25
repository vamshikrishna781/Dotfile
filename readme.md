# Arch Linux Theme & Automation Pack

Welcome to my personal Dotfiles repository! This is a complete, pre-configured aesthetic environment for Arch Linux, featuring a dynamic Pywal theme, an advanced blur layer system, and carefully crafted notifications and bar layouts.

## Features
- **Dynamic Theming (`Pywal`)**: Change your wallpaper and the entire system matches.
- **Custom Waybar**: Features expandable module drawers and Pywal integration.
- **Hyprland**: Advanced bezier curve animations, window rules, and gesture support.
- **SwayNC & Wofi**: Completely custom CSS to remove GTK4 artifacts, producing a pure glassmorphism effect.

## Installation

This repository comes with an interactive installer to make setting up your system effortless. You can choose to install everything at once, or cherry-pick specific components (like just the Waybar or just the Wofi configurations).

1. **Install Prerequisites**: Ensure you have `git` and `base-devel` installed on your fresh Arch Linux system:
```bash
sudo pacman -S --needed git base-devel
```

2. **Clone this repository** to your home folder:
```bash
git clone https://github.com/vamshikrishna781/Dotfiles.git ~/.Dotfiles
cd ~/.Dotfiles
```

> **Note:** If GitHub is blocked by your ISP/DNS, use this alternative to bypass the block using DNS-over-HTTPS:
> ```bash
> mkdir -p ~/.Dotfiles && curl -sL --doh-url https://1.1.1.1/dns-query https://github.com/vamshikrishna781/Dotfiles/archive/refs/heads/main.tar.gz | tar -xz -C ~/.Dotfiles --strip-components=1
> cd ~/.Dotfiles
> ```

3. Run the interactive installer:
```bash
cd InstallScripts
./install.sh
```

4. Select your desired installation from the menu!

### Important Notes
If you are doing a **Full Install**, the script relies on `packages.txt` to install all necessary dependencies. Ensure you run the script on an Arch-based system with `yay` access.
