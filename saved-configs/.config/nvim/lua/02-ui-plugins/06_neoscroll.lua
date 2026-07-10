-- ABOUT: Smooth scrolling

-- Smooth scrolling when I press `zz` to center my cursor

--=============================================================================

return {
    -- Installation
    "karb94/neoscroll.nvim",
    -- Activation and configuration
    config = function()
        require("neoscroll").setup({})
    end
}
