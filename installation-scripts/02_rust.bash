#!/usr/bin/env bash

#______________________________________________________________________________

sudo pacman -S --needed --noconfirm rustup

#______________________________________________________________________________

if command -v rustup >/dev/null 2>&1; then
    rustup update stable

    rustup default stable

    rustup component add --toolchain stable rust-analyzer
fi

#______________________________________________________________________________

if command -v cargo-binstall >/dev/null 2>&1; then
    cargo binstall cargo-binstall
else
    cargo install cargo-binstall --locked
fi

#______________________________________________________________________________

if command -v cargo-binstall >/dev/null 2>&1; then
    cargo binstall --no-confirm sqlx-cli
fi

#______________________________________________________________________________
