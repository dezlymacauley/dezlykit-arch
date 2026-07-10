-- 2 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current file 
-- using StyLua
vim.keymap.set("n", "<leader>ff", function()
  vim.cmd("write")

  vim.fn.system({
    "stylua",
    vim.fn.expand("%"),
  })

  vim.cmd("edit!")
end, {
  desc = "Format file with StyLua",
})
