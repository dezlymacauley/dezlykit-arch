#!/usr/bin/env bash

# Get directory where this script lives
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run the bash scripts in the `installation-scripts` directory
for script in "$SCRIPT_DIR"/installation-scripts/*.bash; do
    "$script"
done
