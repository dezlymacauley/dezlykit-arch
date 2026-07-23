#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm niri
sudo pacman -S --needed --noconfirm ghostty

sudo pacman -S --needed --noconfirm mpv
#
sudo pacman -S --needed --noconfirm firefox

if command -v paru >/dev/null 2>&1; then
  paru -S --needed --noconfirm google-chrome
fi

sudo pacman -S --needed --noconfirm obs-studio

sudo pacman -S --needed --noconfirm gimp
