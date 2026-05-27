#!/bin/bash

sudo pacman -Syu yay
mkdir ~/Scripts
yay -Syu zsh librewolf discord steam volctl pavucontrol gnome-terminal btop
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
