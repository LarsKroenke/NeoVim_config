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
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set({'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})

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
      filetypes = {"tex"},
    })

    -- Enable servers
    vim.lsp.enable("pyright")
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("texlab")

    vim.diagnostic.enable = true
    vim.diagnostic.config({
      virtual_lines = true,
    })
  end,
}
