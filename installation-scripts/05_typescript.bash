#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm nodejs
sudo pacman -S --needed --noconfirm npm

sudo pacman -S --needed --noconfirm deno

deno install --global -f -A --allow-scripts vscode-langservers-extracted
