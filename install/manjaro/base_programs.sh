#!/bin/bash

sudo pacman -Syu yay
mkdir ~/Scripts

# Main utility
yay -Syu zsh librewolf volctl pavucontrol gnome-terminal btop zip unzip arandr gparted protonup-qt-bin nemo

# Dev
yay -Syu jetbrains-toolbox docker docker-compose dbeaver && systemctl start docker.service systemctl enable docker.service && usermod -aG docker $USER

# Nvidia driver
sudo mhwd -a pci nonfree 0300

# Secondary
yay -Syu discord steam grub-customizer vlc vlc-plugin-ffmpeg scrot xclip bleachbit pinta spotify ttf-ms-win11-auto telegram

# Games
yay -Syu prismlauncher-bin bedrock-on-linux-bin

# Fix emojis on Discord
sudo pacman -S noto-fonts-emoji

# OMZ install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Custom scripts/zsh custom stuff
mkdir ~/Scripts
cp ./scripts/* ~/Scripts
cat ./zsh_aliases >> ~/.zshrc
