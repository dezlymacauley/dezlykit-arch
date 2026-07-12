#______________________________________________________________________________

# SECTION: Path Statements

#______________________________________________________________________________

# Globally installed npm packages
fish_add_path "$HOME/.deno/bin/"

# Creates a custom directory for npm packages installed with the `-g` flag
# E.g. `npm install -g typescript`
# if not test -d $HOME/.npm-global-pkgs
#     mkdir $HOME/.npm-global-pkgs
# end

# Checks if the `npm` is available
# if command -q npm
   
    # Instructs the `npm` command to use the custom directory.
#     if test (npm config get prefix) != $HOME/.npm-global-pkgs
#         npm config set prefix $HOME/.npm-global-pkgs
#     end
#
# end

# Adds this custom directory to my path so that I can use binary executables
# of tools installed by aube.
# fish_add_path $HOME/.local/share/pnpm/

#______________________________________________________________________________

# SUB_SECTION: Rust and Solana

# This allows the shell access the binaries of Rust packages 
# that were installed with the command:
# `cargo install name-of-package`
# or `cargo binstall name-of-package`
fish_add_path "$HOME/.cargo/bin/"

# This is where the Solana CLI will be installed
fish_add_path "$HOME/.local/share/solana/install/active_release/bin"

# This is where the Surfpooll CLI will be installed
# fish_add_path "$HOME/.local/bin/surfpool-cli/"

#______________________________________________________________________________

# This allows the shell access the binaries of Python packages 
# that were installed with the command:
# `uv tool install name-of-package`
fish_add_path "$HOME/.local/bin/"


#______________________________________________________________________________

# These two lines are there to keep my home directory clean
# when programming in Go.
# If the `GOPATH` and `GOBIN` variables are not set,
# Go will create a directory called `go` in the home directory.
set -gx GOPATH "$HOME/.go-global-pkgs"
set -gx GOBIN "$GOPATH/bin"

# This allows the shell access the binaries of Go packages
# that were installed with the command:
# `go install name-of-package`
fish_add_path "$GOBIN"

#______________________________________________________________________________

# Set Firfox as the default browser
# This is needed when working with JupyterLab
if command -q firefox
    set -x BROWSER firefox
end

# Skips the telemetry prompt when installing packages 
# with `cargo-binstall`
if command -q cargo-binstall
    set -Ux BINSTALL_DISABLE_TELEMETRY true
end

#______________________________________________________________________________

# SECTION: Fish Settings

# Disables the default greeting 
set -U fish_greeting

#______________________________________________________________________________

# SECTION: Alias Statements

# then it will be used instead of the instead of the standad `ls` command.
# If `lsd` is installed, then this will use `lsd` when you type `ls` 
if command -q lsd
   alias ls="lsd"
end

alias dezly="cd $HOME/dezly-macauley/"

alias cfgfish="cd $HOME/.config/fish/ && nvim ."
alias cfgghostty="cd $HOME/.config/ghostty/ && nvim ."
alias cfghyprland="cd $HOME/.config/hypr/ && nvim ."
alias cfgneovim="cd $HOME/.config/nvim/ && nvim ."
alias cfgyazi="cd $HOME/.config/yazi/ && nvim ."
alias cfgzellij="cd $HOME/.config/zellij/ && nvim ."

alias wallpaper_reload="systemctl --user restart hyprpaper.service"

alias disk_space="df -h"
alias fsize="du -sh"
alias dsize="du -sh"

alias battery="acpi"

alias b1="brightnessctl set 1%"
alias b2="brightnessctl set 2%"
alias b4="brightnessctl set 4%"
alias b5="brightnessctl set 5%"
alias b10="brightnessctl set 10%"
alias b20="brightnessctl set 20%"
alias b25="brightnessctl set 25%"
alias b50="brightnessctl set 50%"
alias b100="brightnessctl set 100%"

#______________________________________________________________________________

# SECTION: Custom Functions

function list_path_variable_contents
    printf "%s\n" $PATH
end

#______________________________________________________________________________

# SECTION: Virtual Machines: QEMU/libvirt

function vm_status
    if systemctl is-active --quiet libvirtd.socket
        echo
        echo "✅ QEMU/libvirt engine is active"
        echo
    else
        echo
        echo "⬛ QEMU/libvirt engine is inactive"
        echo
    end
end

function vm_toggle
    if systemctl is-active --quiet libvirtd.socket
        sudo systemctl stop \
            libvirtd.service \
            libvirtd.socket \
            libvirtd-admin.socket \
            libvirtd-ro.socket >/dev/null 2>&1

        echo
        echo "⬛ QEMU/libvirt engine deactivated"
        echo
    else
        sudo systemctl start \
            libvirtd.socket \
            libvirtd-admin.socket \
            libvirtd-ro.socket >/dev/null 2>&1

        echo
        echo "✅ QEMU/libvirt engine activated"
        echo
    end
end

#______________________________________________________________________________

# SECTION: External Drive Management

set -gx seagate_external_drive_mount_point "/run/media/dezlymacauley/sg-800"

function seagate_external_drive
    if cd $seagate_external_drive_mount_point 2>/dev/null
        # cd succeeded, nothing else to do
        true
    else
        echo
        echo "Seagate external drive is not connected."
        echo
    end
end

function safely_remove_seagate_external_drive
    sync
    udiskie-umount $seagate_external_drive_mount_point
    sync
end


#______________________________________________________________________________

# SECTION: Source Statements

# Loads the `mise` polyglot tool version manager 
if command -q mise
    mise activate fish | source
end

# Loads the `starship` shell prompt if `starship` is installed.
if command -q starship
    starship init fish | source
end

#______________________________________________________________________________
