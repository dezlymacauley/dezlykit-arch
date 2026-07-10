
-- ABOUT: Use treesitter to autoclose html tags

-- This plugin requires `nvim-treesitter` to work.

-- Automatically closes html tags when you type `>`
-- E.g. If you type `<h1` as soon as you type `>` it will autoclose the tag
-- to <h1></h1>

--=============================================================================

return {
    -- Installation
    "windwp/nvim-ts-autotag",
    -- Activation and configuraton
    config = function()
        require("nvim-ts-autotag").setup({})
    end
}

--=============================================================================
