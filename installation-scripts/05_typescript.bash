#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm nodejs
sudo pacman -S --needed --noconfirm deno

deno install --global -f -A --allow-scripts vscode-langservers-extracted
deno install --global -f -A --allow-scripts typescript
deno install --global -f -A --allow-scripts typescript-language-server
deno install --global -f -A --allow-scripts svelte-language-server


# The package `@tailwindcss/language-server` is a "scoped" npm package.
# Theses are packages that start with an `@`

# Deno normally figures out the command name on its own, 
# but for scoped packages it can't always guess correctly. 
# So you'll get an error like this:
#An executable name was not provided. One could not be inferred from the URL.

# They simplest way to fix this is to use the flag `name`, 
# followed by the name of the executable binary listed in the package.json.
# 
# For Tailwind CSS, its tailwindcss-language-server
deno install --global -f -A --allow-scripts \
    --name tailwindcss-language-server \
    @tailwindcss/language-server
