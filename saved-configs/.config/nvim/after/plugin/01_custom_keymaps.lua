--=============================================================================
-- Please note that the keymap `<leader>ff` is already taken.
-- It is used to format files types in the directory:
-- $HOME/.config/nvim/after/ftplugin
--=============================================================================

-- Builtin:
-- gd
-- Ctrl ]

--=============================================================================
-- SECTION: Native Keymaps => Buffer Navigation 

-- Ctrl + n
vim.keymap.set(
    "n", "<C-n>",
    ":bn<CR>",
    { desc = "[n]ext buffer", noremap = true, silent = true }
)

-- <leader> key + c
vim.keymap.set(
    "n", "<leader>c",
    ":bd<CR>",
    { desc = "[c]lose buffer", noremap = true, silent = true }
)

--=============================================================================
-- SECTION: Native Keymaps => Terminal Navigation

-- <leader> key + t
-- This will open a new terminal on the bottom right that has no line numbers,
-- and you will be insert mode when this terminal opens up.
vim.keymap.set(
    "n", "<leader>t",
    ":belowright split<CR>"
    .. ":terminal<CR>"
    .. ":setlocal nonumber norelativenumber<CR>"
    .. "i",
    { desc = "[t]erminal", noremap = true, silent = true }
)

-- <leader> key + v + t
-- This will open a new vertical terminal on the right that has no line numbers,
-- and you will be insert mode when this terminal opens up.
vim.keymap.set(
    "n", "<leader>vt",
    ":belowright vsplit<CR>"
    .. ":vertical resize 34<CR>"
    .. ":terminal<CR>"
    .. ":setlocal nonumber norelativenumber<CR>"
    .. "i",
    { desc = "[v]ertical [t]erminal", noremap = true, silent = true }
)

-- Alt + e
-- Switches yout back to `Normal Mode` when using the `Terminal Mode`,
-- and then moves your cursor back to the window that contains your code.
-- The terminal will be left running.
vim.keymap.set(
    "t", "<M-e>",
    "<C-\\><C-n><C-w>w",
    { desc = "[e]xit terminal mode", noremap = true, silent = true }
)

--=============================================================================
-- SECTION: Native Keymaps => Window Navigation

-- Ctrl + h
vim.keymap.set(
    "n", "<C-h>",
    "<C-w><C-h>",
    { desc = "Move focus to the window on the left", noremap = true, silent = true }
)

-- Ctrl + j
vim.keymap.set(
    "n", "<C-j>",
    "<C-w><C-j>",
    { desc = "Move focus to the window below", noremap = true, silent = true }
)

-- Ctrl + k
vim.keymap.set(
    "n", "<C-k>",
    "<C-w><C-k>",
    { desc = "Move focus to the window above", noremap = true, silent = true }
)

-- Ctrl + l
vim.keymap.set(
    "n", "<C-l>",
    "<C-w><C-l>",
    { desc = "Move focus to the window on the right", noremap = true, silent = true }
)

--=============================================================================

-- SECTION: Plugin Keymaps => oil.nvim

vim.keymap.set(
	"n", "<leader>fe",
    ":Oil<CR>",
	{ desc = "[f]ile [e]xplorer", noremap = true, silent = true }
)

--=============================================================================
-- SECTION: Plugin Keymaps => telescope.nvim

local builtin = require("telescope.builtin")

vim.keymap.set(
    "n", "<leader>sf",
    builtin.find_files,
    { desc = "[s]earch for a [f]ile by name", noremap = true, silent = true }
)

vim.keymap.set(
    "n", "<leader>sw",
    builtin.live_grep,
    { desc = "[s]earch for a [w]ord in a file", noremap = true, silent = true }
)

vim.keymap.set(
    "n", "<leader><leader>",
    builtin.buffers,
    { desc = "View currently opened files", noremap = true, silent = true }
)

vim.keymap.set(
    "n", "<leader>sh",
    builtin.help_tags,
    { desc = "[s]earch Telescope [h]elp docs", noremap = true, silent = true }
)

--=============================================================================

-- SECTION: Plugin Keymaps => trouble.nvim

vim.keymap.set(
	"n", "<leader>d",
    ":Trouble diagnostics toggle filter.buf=0<CR>",
	{ desc = "[d]iagnostics", noremap = true, silent = true }
)

--=============================================================================

-- SECTION: Plugin Keymaps => markdown-preview

-- vim.keymap.set(
--     "n",
--     "<leader>mp",
--     ":MarkdownPreviewToggle<CR>",
--     { desc = "[m]arkdown [p]review" }
-- )

--=============================================================================

-- SECTION: Plugin Keymaps => peek

vim.keymap.set(
    "n",
    "<leader>mp",
    ":PeekOpen<CR>",
    { desc = "[m]arkdown [p]review" }
)

--=============================================================================

-- SECTION: Plugin Keymaps => nvim-tree.lua

vim.keymap.set(
    "n",
    "<leader>ft",
    ":NvimTreeToggle<CR>",
    { desc = "[f]file [t]ree", noremap = true, silent = true }
)

--=============================================================================
