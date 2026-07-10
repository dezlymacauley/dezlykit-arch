-- This remaps `Ctrl + c` to the `Esc` key so that you don't see the message
-- `Type :qa and press <Enter> to exit Nvim` 
-- when your press `Ctrl + c` twice to exit normal mode.

vim.keymap.set(
    "n", "<C-c>", 
    "<Esc>", 
    { noremap = true, silent = true }
)

-- This will clear the messages displayed in the command line after
-- 250 milliseconds.
-- If you want to see what the message was then do this:
-- `:messages`
vim.api.nvim_create_autocmd("BufWritePost", {
    callback = function()
        vim.defer_fn(function()
            vim.cmd("echo ''")
        end, 250) 
    end,
})
