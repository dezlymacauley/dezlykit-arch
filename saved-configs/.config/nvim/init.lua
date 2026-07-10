-- Disables netrw (the default file tree in Neovim)
-- This is required for the plugin `nvim-tree`
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

 -- Enable 24-bit colour
-- This is required for the plugin `nvim-tree`
vim.opt.termguicolors = true

require("00-core-settings.01_runtimepath_settings")
require("00-core-settings.02_keymap_settings")
require("00-core-settings.03_native_options")
require("00-core-settings.04_plugin_manager")
require("00-core-settings.05_lsp_settings")
require("00-core-settings.06_diagnostic_display")
