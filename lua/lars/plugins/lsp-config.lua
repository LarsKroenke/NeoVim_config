-- Configure LSP clients

-- Set default root markers for all clients
-- File: lua/lars/plugins/lsp-config.lua
return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Global defaults
        vim.lsp.config("*", {
            root_markers = { ".git", "pyproject.toml", "setup.py", "requirements.txt" },
        })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})

        -- Python (Pyright)
        vim.lsp.config("pyright", {
            cmd = { "pyright-langserver", "--stdio" },
            filetypes = { "python" },
        })

        -- Lua
        vim.lsp.config("lua_ls", {
            filetypes = { "lua" },
        })

        -- LaTeX
        vim.lsp.config("texlab", {
            filetypes = { "tex" },
        })
        -- spell checking with ltex-ls
        vim.lsp.config("ltex-ls-plus", {
            on_attach = function()
                -- setup ltex_extra during on_attach
                require("ltex_extra").setup({
                    load_langs = { "en-US", "de-DE" },
                    -- save to .ltex dir
                    path = ".ltex",
                })
            end,

            settings = {
                ltex = {
                    checkFrequency = "save",
                    enabled = { "markdown", "plaintex", "rst", "tex", "latex" },
                    language = { "en-US", "de-DE" },
                },
            },
        })
        -- ltex for latex, german and english
        --        vim.lsp.config("ltex-ls-plus", {
        --            filetypes = { "tex", "bib", "markdown", "plaintex" },
        --            settings = {
        --                ltex = {
        --                    language = "de-DE",
        --                    diagnosticSeverity = "information",
        --                    disabledRules = { ["de-DE"] = { "MORFOLOGIK_RULE_DE_DE" } },
        --                    additionalRules = {
        --                        enablePickyRules = true,
        --                        motherTongue = "de-DE",
        --                    },
        --                    dictionary = {
        --                        ["de-DE"] = { "Neovim", "Lars" },
        --                        ["en-US"] = { "Neovim", "Lars" },
        --                    },
        --                    trace = { server = "verbose" },
        --                },
        --            },
        --        })
        --	require("lspconfig").ltex.setup({
        --		filetypes = { "tex", "bib", "markdown", "plaintex" },
        --		settings = {
        --			ltex = {
        --				language = "de-DE",
        --				diagnosticSeverity = "information",
        --				disabledRules = { ["de-DE"] = { "MORFOLOGIK_RULE_DE_DE" } },
        --				additionalRules = {
        --					enablePickyRules = true,
        --					motherTongue = "en-US",
        --				},
        --				dictionary = {
        --					["de-DE"] = { "Neovim", "Lars" },
        --					["en-US"] = { "Neovim", "Lars" },
        --				},
        --				trace = { server = "verbose" },
        --			},
        --		},
        --	})

        -- Enable servers
        vim.lsp.enable("pyright")
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("texlab")
        vim.lsp.enable("ltex-ls-plus")

        vim.diagnostic.enable = true
        vim.diagnostic.config({
            virtual_lines = true,
        })
    end,
}
