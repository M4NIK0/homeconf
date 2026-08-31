#!/bin/bash

# Optimus manager
yay -Syu optimus-manager optimus-manager-qt

# Watercooling
git clone https://github.com/anvme/watercooler-xmg-neo-linux
cd watercooler-xmg-neo-linux
sudo bash install.sh
sudo systemctl enable --now watercooler
sudo watercooler speed --max
