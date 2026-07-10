-- 2 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current file
-- with `deno fmt`
vim.keymap.set("n", "<leader>ff", function()
    vim.cmd("write") -- Save the file first
    vim.fn.system({ "deno", "fmt", "--unstable-component", vim.fn.expand("%") })
    vim.cmd("edit!") -- Reload the formatted file
end, {
    desc = "[f]ormat [f]ile",
    buffer = true,
})
