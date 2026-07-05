#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm docker

sudo pacman -S --needed --noconfirm docker-compose

sudo groupadd -f docker 

sudo usermod -aG docker "$USER"
