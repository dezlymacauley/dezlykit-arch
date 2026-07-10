-- 4 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current Rust file 
-- with `zig fmt` 
vim.keymap.set("n", "<leader>ff", function()
    vim.cmd("write") -- save file
    vim.fn.system({ "zig", "fmt", vim.fn.expand("%") })
    vim.cmd("edit!") -- reload cleanly
end, {
    desc = "[f]ormat [f]ile",
    buffer = true,
})

-- vim.keymap.set(
--     "n", "ff", 
--     function()
--         vim.cmd("update") -- save the current file
--         vim.cmd("silent !zig fmt % >/dev/null 2>&1") -- format the file
--         vim.cmd("checktime") -- refresh the file
--     end,
--     {
--         buffer = true,
--         desc = "[f]ormat [f]ile"
--     }
-- )



