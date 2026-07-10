-- `vim.o` is used to set an option for all windows in Neovim

-- Integrates Neovim with your system clipboard.
-- This creates a smooth user experience when copying and pasting 
-- between Neovim and other applications.
vim.o.clipboard = "unnamedplus"

-- 4 Space indentation
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.smartindent = true

-- Text will stay on the same line no matter the size of the terminal
vim.o.wrap = false

-- Neovim uses the character `~` to show that 
-- you have reached the end of a file.
-- The technical term is `eob` (end of buffer).
-- So you may see a virtical column of `~` characters when you first open
-- up Neovim or when you are using a transparent background.
-- To clean up the UI, use this line to replace all the eob characters
-- with an empty space.
vim.o.fillchars = "eob: "

-- I don't really need this.
-- Also the swapfile warning is annoying
vim.o.swapfile = false

-- Show line numbers
vim.o.number = true

-- When you place your cursor on a line,
-- this will show the current line number in a column on the left.
-- The line numbers for the rest of the lines in your code will be shown 
-- relative to the current line number.
-- This makes it easier to jump to a specific line by typing:
--
-- The relative line number and k (if the line is above the current line).
-- or the relative line number and j (if the line is below the current line)
vim.o.relativenumber = true

-- This will ensure that there is always an empty column on the left of the 
-- line numbers this column is used by Neovim to display a symbol when your
-- lsp needs to warn you about an error on a specific line of code.
-- vim.o.signcolumn = "yes:2"
vim.o.signcolumn = "yes"

-- When using the command `:new`, Horizontal splits always open below
vim.o.splitbelow = true

-- When using the command `:vnew`, Vertical splits always open on the right
vim.o.splitright = true

-- When searching for text in a file using `/`,
-- Neovim with switch off the highlighting when I press `ctrl + c`
-- so stop searching.
vim.o.hlsearch = false

-- Searching for text with `/` will not be case sensitive
vim.o.ignorecase = true

-- Searches will become case sensitve when the first word of your search,
-- starts with a capital letter.
vim.o.smartcase = true

-- This will display a prompt that will ask you if you want to save,
-- if you try to close an unsaved file with `:q`
vim.o.confirm = true

-- Displays a horizontal line that shows what line your cursor is on.
vim.o.cursorline = true

-- This will add a vertical column on the right of the user interface
-- to show me when the characters on a line are approaching 80 characters
-- For code readability, I try to keep each line shorter than 80 characters.
vim.o.colorcolumn = "80"

-- This will disable the modeline.
-- When you enter Insert, Visual, or Visual line mode there is a display
-- at the bottom of the Neovim UI that will 
-- display something like -- INSERT --
vim.o.showmode = false

-- Adds a rounded border for popup menus like `blink.cmp` autocompletion
-- and viewing documentation about a variable by pressing `k`
vim.o.winborder = "rounded"

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 8

-- This setting is required by nvim colorizer
vim.opt.termguicolors = true

vim.opt.fillchars:append({
  eob = " ",
})
