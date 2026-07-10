-- ABOUT: Dead column

-- Hides the colorcolumn until I start approaching it.

--=============================================================================

return {
    -- Installation
    "Bekaboo/deadcolumn.nvim",
    -- Activation and configuration
    config = function()
        require("deadcolumn").setup({
            blending = {
                colorcode = "#750095",
            }
        })
    end
}
