#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm python

sudo pacman -S --needed --noconfirm uv

uv tool install ty@latest

uv tool install ruff@latest

uv tool install sqruff@latest

uv tool install pgcli@latest

uv tool install litecli@latest

uv tool install cmake-language-server
