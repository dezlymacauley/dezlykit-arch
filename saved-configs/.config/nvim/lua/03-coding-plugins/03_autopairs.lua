-- ABOUT: Bracket Pair Autocompletion 

-- This plugin requires `nvim-treesitter` to work.

-- When you type ( or { or [,
-- the closing of the pair will be added for you.
-- E.g. () {} [] `` '' ""

--=============================================================================

return {
    -- Installation
    "windwp/nvim-autopairs",
    -- Activation and configuraton
    config = function()
        require("nvim-autopairs").setup({})
    end
}

--=============================================================================
