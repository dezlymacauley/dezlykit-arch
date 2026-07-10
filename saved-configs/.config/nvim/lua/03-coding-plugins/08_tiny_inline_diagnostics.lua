-- ABOUT: Tiny inline diagnostics

--=============================================================================

-- In $HOME/.config/nvim/lua/00-core-settings/05_diagnostic_display.lua
-- Ensure that Neovim's built-in virtual_text is turned off:
-- vim.diagnostic.config({ virtual_text = false })

--=============================================================================

return {
    -- Installation
    "rachartier/tiny-inline-diagnostic.nvim",
    -- Activation and configuration
    config = function()
        require("tiny-inline-diagnostic").setup({
            signs = {
                diag = "🛠️",
            }
        })
    end
}
