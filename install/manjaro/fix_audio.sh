#!/bin/bash

sudo pacman -S pipewire-pulse
sudo systemctl --user restart pipewire pipewire-pulse wireplumber
