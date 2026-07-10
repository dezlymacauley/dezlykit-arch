-- ABOUT: Displays vertical lines in the code editor to show indentation

--=============================================================================

return {
    -- Installation
    "lukas-reineke/indent-blankline.nvim",

    -- Activation and configuraton
    config = function()
        require("ibl").setup({})
    end
}

--=============================================================================
