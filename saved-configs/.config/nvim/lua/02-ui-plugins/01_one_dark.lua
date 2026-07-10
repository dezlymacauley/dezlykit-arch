-- ABOUT: My favourite theme

--=============================================================================

return {
    -- Installation
    "navarasu/onedark.nvim",

    -- Activation
    config = function()

        -- This plugin has two `require` functions:

        -- The first `require` is activate and configure the plugin.
        require("onedark").setup({
            -- I prefer the `deep` version of the onedark theme
            style = "deep"
        })

        -- The second `require` is to actually set the plugin
        -- as the colour scheme for the Neovim editor.
        require("onedark").load()

    end
}

--=============================================================================
