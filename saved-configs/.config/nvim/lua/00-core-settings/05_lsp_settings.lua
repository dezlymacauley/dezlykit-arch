-- ABOUT: LSP Settings

--[[

https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lsp-configs

To check if your language server and configuration are working run this:

:checkhealth vim.lsp

or you can use the shorthand:

:LspInfo

--]]

-------------------------------------------------------------------------------

-- SECTION: Bash (.sh)

vim.lsp.config(
    "bashls",
    {
        cmd = { "bash-language-server", "start" },
        filetypes = { "sh" },
    }
)

vim.lsp.enable("bashls")

-- This is to ensure that bashls does not attach to `.env` files
vim.filetype.add({
    extension = {
        env = "dotenv",
    },
})

-------------------------------------------------------------------------------

-- SECTION: Lua (.lua)

vim.lsp.config(
    "lua_ls",
    {
        cmd = { "lua-language-server" },
        filetypes = { "lua" },
        root_markers = { "lua" },
    }
)

vim.lsp.enable("lua_ls")

-------------------------------------------------------------------------------

-- SECTION: C (.c) and C++ (C++)

vim.lsp.config(
    "clangd", 
    {
        cmd = { "clangd" },
        filetypes = { "c", "cpp" }
    }
)

vim.lsp.enable("clangd")

-------------------------------------------------------------------------------

-- SECTION: Clangd

vim.lsp.config(
    "clangd",
    {
        cmd = { "clangd" },
        filetypes = { "c", "cpp" },
    }
)

vim.lsp.enable("clangd")

-------------------------------------------------------------------------------

-- SECTION: Cmake

-- vim.lsp.config(
--     "cmake", 
--     {
--         cmd = { "cmake-language-server" },
--         filetypes = { "cmake" }
--     }
-- )
--
-- vim.lsp.enable("cmake")

-------------------------------------------------------------------------------

-- SECTION: CSS (.css)

vim.lsp.config(
    "cssls",
    {
        cmd = { "vscode-css-language-server", "--stdio" },
        filetypes = { "css" },
        settings = {
            css = {
                lint = {
                    -- This is to get rid of the unknown rule warning when there
                    -- is a Tailwind CSS utility classes like `@theme` in a 
                    -- CSS file
                    unknownAtRules = "ignore"
                }
            }
        }
    }
)

vim.lsp.enable("cssls")

-------------------------------------------------------------------------------

-- SECTION: Dockerfile and Docker compose files

-- vim.lsp.config(
--     "docker_language_server", 
--     {
--         cmd = { "docker-language-server", "start", "--stdio" },
--         filetypes = { "dockerfile" },
--     }
--
-- )
--
-- vim.lsp.enable("docker_language_server")

-------------------------------------------------------------------------------

-- SECTION: Go (.go)

vim.lsp.config(
    "gopls",
    {
        cmd = { "gopls" },
        filetypes = { "go" },
    }

)

vim.lsp.enable("gopls")

-------------------------------------------------------------------------------

-- SECTION: HTML (.html)

vim.lsp.config(
    "html", 
    {
        cmd = { "vscode-html-language-server", "--stdio" },
        filetypes = { "html" },
    }
)
vim.lsp.enable("html")

-------------------------------------------------------------------------------
-- SECTION: JSON (.json)

vim.lsp.config(
    "jsonls", 
    {
        cmd = { "vscode-json-language-server", "--stdio" },
        filetypes = { "json" }
    }
)
vim.lsp.enable("jsonls")

-------------------------------------------------------------------------------

-- SECTION: Python (.py)

vim.lsp.config(
    "ty",
    {
        cmd = { "ty", "server" },
        filetypes = { "python" }
    }
)

vim.lsp.enable("ty")

-------------------------------------------------------------------------------

-- SECTION: Rust (.rs)

vim.lsp.config(
    "rust_analyzer",
    {
        cmd = { "rust-analyzer" },
        filetypes = { "rust" },
    }
)

vim.lsp.enable("rust_analyzer")

-------------------------------------------------------------------------------

-- SECTION: Solidity (.sol)

-- vim.lsp.config(
--     "solidity_ls_nomicfoundation", 
--     {
--         cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
--         filetypes = { "solidity" }
--     }
--
-- )

-- vim.lsp.enable("solidity_ls_nomicfoundation")

--
-- vim.lsp.config(
--     "solidity_ls", 
--     {
--         cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
--         filetypes = { "solidity" }
--     }
--
-- )

-- vim.lsp.enable("solidity_ls_nomicfoundation")


-------------------------------------------------------------------------------

-- SECTION: Svelte (.svelte)

vim.lsp.config(
    "svelte", 
    {
      cmd = { "svelteserver", "--stdio" },
      settings = {
        css = {
          lint = {
            -- Silences the linter warning when you use `@reference`, 
            -- and `@apply` inside a style block to be able 
            -- to use Tailwind CSS rules inside a style block
            unknownAtRules = "ignore"
          }
        }
      }
    }

)

vim.lsp.enable("svelte")

-------------------------------------------------------------------------------

-- SECTION: Tailwind CSS

vim.lsp.config(
    "tailwindcss",
    {
        cmd = { "tailwindcss-language-server", "--stdio" },
        filetypes = { "html", "css", "svelte" },
    }
)

vim.lsp.enable("tailwindcss")

-------------------------------------------------------------------------------

-- NOTE: Do not enable "ts_ls" and "denols" at the same time

-------------------------------------------------------------------------------

-- SECTION: JavaScript (.js), TypeScript (.tx), TypeScript React (.tsx)

-- vim.lsp.config(
--     "ts_ls",
--     {
--         cmd = { "typescript-language-server", "--stdio" },
--         root_dir = vim.fs.root(0, { "package.json" }),
--         filetypes = { "javascript", "typescript", "typescriptreact" },
--     }
-- )

vim.lsp.enable("ts_ls")

-------------------------------------------------------------------------------

-- SECTION: TypeScript (.ts), JavaScript (.js) in Deno projects

vim.lsp.config(
    "denols",
    {
        cmd = { "deno", "lsp" },
        filetypes = { "typescript", "javascript" },
    }
)

vim.lsp.enable("denols")

-------------------------------------------------------------------------------
-- vim.lsp.enable("eslint")
-------------------------------------------------------------------------------

-- SECTION: SQL

vim.lsp.config(
    "sqruff",
    {
        cmd = { "sqruff", "lsp" },
        filetypes = { "sql" },
        root_markers = { ".sqruff" },
    }
)

vim.lsp.enable("sqruff")

-------------------------------------------------------------------------------
vim.lsp.enable("zls")

vim.lsp.enable("mojo")
