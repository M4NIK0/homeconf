#!/bin/bash

sudo pacman -Syu yay
mkdir ~/Scripts

# Main utility
yay -Syu zsh librewolf-bin volctl pavucontrol gnome-terminal btop zip unzip arandr gparted

# Dev
yay -Syu jetbrains-toolbox docker && systemctl start docker.service systemctl enable docker.service && usermod -aG docker $USER

# Nvidia driver
sudo mhwd -a pci nonfree 0300

# Secondary
yay -Syu discord steam grub-customizer vlc vlc-plugin-ffmpeg scrot xclip bleachbit pinta spotify

# OMZ install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
