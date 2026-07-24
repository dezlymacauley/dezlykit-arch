#!/usr/bin/env bash

#______________________________________________________________________________

if command -v cargo-binstall >/dev/null 2>&1; then
    cargo binstall --no-confirm mise
fi

#______________________________________________________________________________

if command -v mise >/dev/null 2>&1; then
    mise use -g usage
fi

#______________________________________________________________________________
