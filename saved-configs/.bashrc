# If `fish` is installed, then fish will be set as the interactive shell, 
# while bash remains the default shell.

# If `fish` is not installed, 
# then `bash` will be set as both the interactive shell and the default shell.

#______________________________________________________________________________

if [[ $- == *i* ]] && command -v fish >/dev/null 2>&1; then
    exec fish --login
fi
