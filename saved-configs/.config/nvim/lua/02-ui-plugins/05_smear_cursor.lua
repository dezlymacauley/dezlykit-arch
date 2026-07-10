-- ABOUT: Smear Cursor

-- Animated cursor

--=============================================================================

return {
    -- Installation
    "sphamba/smear-cursor.nvim",
    -- Activation and configuration
    config = function()
        require("smear_cursor").setup({
            cursor_color = "#00ffbc"
        })
    end
}
