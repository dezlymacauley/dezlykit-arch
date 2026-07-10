-- ABOUT: Find, Filter, Preview, Pick. All lua, all the time. 

--=============================================================================

return {
    -- Installation
    "nvim-telescope/telescope.nvim",
    dependencies = {
        -- plenary is simply a library that telescope uses so it does
        -- not have or need a `require` function
        { "nvim-lua/plenary.nvim" },

        { "nvim-tree/nvim-web-devicons", opts = {} }
    },
    -- Configuration and activation
    config = function()
        require("telescope").setup({})
    end
}

--=============================================================================
