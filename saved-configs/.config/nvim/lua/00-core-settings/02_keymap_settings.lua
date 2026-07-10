--[[

This will set the space bar on your keyboard as Neovim's <leader> key.
The <leader> key is the first key that you press when you want to execute 
a custom keymap (aka a custom keyboard shortcut)

--]]
vim.g.mapleader = " "

--[[

The point of `timeoutlen` is so that Neovim can differentiate between 
single-key actions and multi-key mappings without penalizing those who
can type fast.

When you press the <leader> key, 
or the first key in a native Neovim keymap, 
this tells Neovim how many mili-seconds it should wait for you to enter 
the next key of the keymap. 

Note that if you press the rest of the keys faster than the timeoutlen,
the keymap will be executed immediately. 

--]]
vim.opt.timeoutlen = 500
