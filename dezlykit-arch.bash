#!/usr/bin/env bash

# Get directory where this script lives
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run the bash scripts in the `installation-scripts` directory
bash "$SCRIPT_DIR/installation-scripts/01_rust.bash"
bash "$SCRIPT_DIR/installation-scripts/02_python.bash"
bash "$SCRIPT_DIR/installation-scripts/03_go.bash"
