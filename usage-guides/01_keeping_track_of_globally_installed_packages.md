# Keeping track of globally installed packages
_______________________________________________________________________________

## pacman

To view a list to all the packages that you explicitly installed globally
using `pacman` or the AUR helper `paru`, run this command.

```bash
pacman -Qe
```
_______________________________________________________________________________

## paru

To view a list of all the packages that you explicitly installed globally
using the AUR helper `paru`, run this command.

```bash
pacman -Qm
```
_______________________________________________________________________________

## cargo

To view a list of all the packages that you installed globally using
Rust's package manager `cargo`, run this command.

```bash
cargo install --list
```
_______________________________________________________________________________

## mise

To view a list of all the packages that you installed globally using 
the Rust-powered tool version manager called `mise`, run this command.

```bash
mise list -g
```
_______________________________________________________________________________

## uv

To view a list of all the packages that you installed globally
using Python's package manager called `uv`, run this command

```bash
uv tool list
```
_______________________________________________________________________________

## go

To view a list of all the packages that you installed globally
using Go's package manager called `go`, run this command

```bash
ls "$(go env GOBIN)"
```
_______________________________________________________________________________

## uv

To view a list of all the packages that you installed globally
using Python's package manager called `uv`, run this command

```bash
uv tool list
```
_______________________________________________________________________________

## deno

```bash
ls "$HOME/.deno/bin"
```
_______________________________________________________________________________
