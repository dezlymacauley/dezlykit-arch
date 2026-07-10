-- ABOUT: gbc to create a block comment

-- You can also use gcc on an empty line

--=============================================================================
return {
    -- Installation
    "numToStr/Comment.nvim",
    -- Activation and configuration
    config = function()
        require("Comment").setup({})
    end
}
