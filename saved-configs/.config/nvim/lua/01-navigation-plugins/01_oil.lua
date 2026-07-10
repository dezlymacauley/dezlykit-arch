-- ABOUT: Oil.lua

-- Allows you to edit the contents of a directory like a file

--=============================================================================

return {

    -- Installation
    "stevearc/oil.nvim",
    dependencies = {
        { "nvim-tree/nvim-web-devicons", opts = {} }
    },
    -- Activation and configuration
    config = function()
        require("oil").setup({

            -- When you press `dd` instead of deleting a file,
            -- that file will be moved to `.local/share/Trash`
            delete_to_trash = true,

            -- Show files and directories that start with "."
            view_options = {
                show_hidden = true
            },

            -- I've disabled the default keymaps to avoid clashes.
            use_default_keymaps = false,

            -- This is the only default keymap that I want to keep.
            -- I only want to Enter as a keymap
            keymaps = {
                -- When using Oil.nvim you can enter a directory by
                -- pressing enter
                ["<CR>"] = "actions.select",
            }

        })
    end
}
