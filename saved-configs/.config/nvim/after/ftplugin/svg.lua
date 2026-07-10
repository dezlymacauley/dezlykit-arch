-- 2 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current file 
-- with `biome format --write` 
vim.keymap.set("n", "<leader>ff", function()
    vim.cmd("write")  -- save file
    vim.fn.system({ "biome", "format", "--write", vim.fn.expand("%") })
    vim.cmd("edit!")  -- reload cleanly
end, {
    desc = "[f]ormat [f]ile",
    buffer = true,
})
