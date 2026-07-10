-- 4 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current SQL file
-- with `sqruff` 
vim.keymap.set("n", "<leader>ff", function()
    vim.cmd("write")  -- save file
    vim.fn.system({ "sqruff", "fix", vim.fn.expand("%") })
    vim.cmd("edit!")  -- reload cleanly
end, {
    desc = "[f]ormat [f]ile (sqruff)",
    buffer = true,
})
