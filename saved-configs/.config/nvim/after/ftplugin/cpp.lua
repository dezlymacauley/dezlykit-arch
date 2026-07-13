-- 4 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current C++ file
-- with `clang-format`
vim.keymap.set("n", "<leader>ff", function()
    vim.cmd("write") -- save file
    vim.fn.system({ "clang-format", "-i", vim.fn.expand("%") })
    vim.cmd("edit!") -- reload cleanly
end, {
    desc = "[f]ormat [f]ile",
    buffer = true,
})
