#!/bin/bash

sudo pacman -Syu yay
mkdir ~/Scripts

# Main utility
yay -Syu zsh librewolf volctl pavucontrol gnome-terminal btop zip unzip

# Secondary
yay -Syu discord steam grub-customizer vlc scrot xclip

# OMZ install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
