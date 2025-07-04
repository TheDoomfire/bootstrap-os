#!/bin/bash

# Install packages
# TODO: 
# Sort packages. For example: "programming", "media", "editing"
# Have a packages.txt file with the packages.

# packages=(
#   neovim,
#   git,
# )
#
# for package in "${packages[@]}"; do
#   sudo apt install "$package"
# done

sudo apt install -y $(grep -vE '^#|^$' packages.txt)


# TODO: Add settings.
# TODO: Remove all delays.
