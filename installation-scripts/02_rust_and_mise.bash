#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm rustup

rustup update stable

rustup default stable

rustup component add --toolchain stable rust-analyzer

if command -v cargo-binstall >/dev/null 2>&1; then
    cargo binstall cargo-binstall
else
    cargo install cargo-binstall --locked
fi

cargo binstall sqlx-cli

cargo binstall mise

if command -v mise >/dev/null 2>&1; then
    mise use -g usage
fi
