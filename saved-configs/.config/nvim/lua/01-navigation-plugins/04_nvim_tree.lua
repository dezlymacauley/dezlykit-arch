-- ABOUT: Nvim Tree

-- A file tree for Neovim

--=============================================================================

return {

    -- Installation
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        { "nvim-tree/nvim-web-devicons", opts = {} }
    },
    -- Activation and configuration
    config = function()
        require("nvim-tree").setup({

            filters = {
                -- Prevents nvim-tree from hiding
                -- hidden files that start with a `.`
                -- E.g. `.sveltekit`
                dotfiles = false,
            
                -- Prevents nvim-tree from hiding
                -- files that are in the `.gitignore` of your project
                git_ignored = false,
            },
            view = {
                width = 50, 
            },

        })
    end
}
