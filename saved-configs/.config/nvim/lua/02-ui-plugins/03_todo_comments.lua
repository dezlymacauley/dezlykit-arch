-- ABOUT: 
-- Highlights your comments

--=============================================================================

return {
    -- Installation
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    -- Activation and configuration
    config = function()
        require("todo-comments").setup({

        -- Show icons in the sign column on the left
        -- of the line numbers
            signs = true,
        -- Ensure that the signs are visible
            sign_priority = 8,
            keywords = {
                SECTION = { icon = "🚀", color = "section" },
                SUB_SECTION = { icon = "🛩️", color = "sub_section" },
                HTML = { icon = "📄", color = "html" },
                CSS = { icon = "🎨", color = "css" },
                TypeScript = { icon = "🟦", color = "typescript" },
                JavaScript = { icon = "🟨", color = "javascript" },
                NOTE = { icon = "📚", color = "note" },
                ABOUT = { icon = "📜", color = "about" },
                EXAMPLE = { icon = "🔬", color = "example" },
                TODO = { icon = "🍨", color = "todo"},
                STEP = { icon = "👣", color = "step" },
                ACCOUNT = { icon = "🔐", color = "about" },
            },
            colors = {
                note = { "#05fa78" },
                section = { "#c048f7" },
                step = { "#176bc6" },
                sub_section = { "#ff004d" },
                html = { "#DD4B25" },
                css = { "#254BDD" },
                javascript = { "#F5DF1F" },
                typescript = { "#3178C6"},
                example = { "#c048f7" },
                about = { "#ffb000" },
                todo = { "#1ecbe1"}
            }

        })
    end
}

--=============================================================================
