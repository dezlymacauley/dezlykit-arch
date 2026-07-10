-- ABOUT: trouble

-- A pretty list for showing diagnostics, references, 
-- telescope results, 
-- quickfix and location lists 
-- to help you solve all the trouble your code is causing.

--=============================================================================

return {
    -- Installation
   "folke/trouble.nvim",
    -- Activation and configuration
    config = function()
        require("trouble").setup({})
    end
}
