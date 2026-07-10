-- This will display in-line error messages in your code

vim.diagnostic.config({
    -- I'm setting this to false because I will be using a plugin
    -- called `tiny inline diagnostics` to display virtual text
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
