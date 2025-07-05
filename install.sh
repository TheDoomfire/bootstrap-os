#!/bin/bash
set -euo pipefail

# Imports
# TODO: Import everything from functions folder
source "$(dirname "$0")/functions/reboot.sh"

# TODO: 
# Download all this from github? To the default download location?

echo "📦 Installing packages..."

# TODO:
# Intall flatpaks too and not just apt packages?
# Example: flatpak install flathub com.usebottles.bottles

sudo apt update
# sed -E 's/[[:space:]]*#.*$//; s/^[[:space:]]+//; s/[[:space:]]+$//; /^$/d' packages.txt | xargs -r sudo apt install -y

# grep -vE '^#|^$' packages.txt | xargs -r sudo apt install -y
# xargs -a packages.txt sudo apt install -y
# grep -v '^#\|^$' packages.txt | xargs sudo apt install -y
# sudo apt install -y $(grep -vE '^#|^$' packages.txt)

echo "⚙️  Applying system settings..."

# TODO: 
# Remove all delays.
# Turn off sound effects.
# Set theme
# Set wallpaper?
# Set cursor theme
# Set Dark Mode

# find all the .sh files in the system-settings folder
find system-settings -type f -name '*.sh' | sort | while read -r script; do
    echo "Applying ${script}..."
    # Use bash -e to maintain error handling
    bash -e "$script"
done

echo "🔮 Future Features & Roadmap"
echo "Neovim config + installing plugins..."
echo "Tmux config + installing plugins..."
echo "Latest node version..."
echo ""

echo "✅ Bootstrap complete! System is ready."

# HAVE THIS LAST
prompt_reboot
