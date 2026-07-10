-- ABOUT: Highlights bracket pairs and html pairs in different colours 

-- to make it easier to keep track of nested scopes in functions

-- NOTE: This requires the plugin `nvim-treesitter` to be installed 
-- and configured correctly

-- Ensure that `highlight = { enabled = true }` is set 
-- in the nvim-treesitter configuration.

--=============================================================================

return {
    -- Installation
    "HiPhish/rainbow-delimiters.nvim",
    -- Activation and configuration
    config = function()
        require("rainbow-delimiters.setup").setup({})
    end
}

--=============================================================================
