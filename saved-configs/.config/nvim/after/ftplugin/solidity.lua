-- 2 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current Solidity file 
-- with `forge fmt`
vim.keymap.set(
    "n", 
    "<leader>ff", 
    function()
        vim.cmd("silent update | silent !forge fmt % | edit")
    end, 
    {
      desc = "[f]ormat [f]ile",
      buffer = true,
      silent = true,
    }
)
