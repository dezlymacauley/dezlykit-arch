-- ABOUT: Dead column

-- Hides the colorcolumn until I start approaching it.

--=============================================================================

-- Ensure that you have this setting enabled in your Neovim options

return {
    -- Installation
    "norcalli/nvim-colorizer.lua",
    -- Activation and configuration
    config = function()
        require("colorizer").setup({
            -- Set the filetypes
            "css";
            "lua";
            "svelte";
            "toml";
        })
    end
}
