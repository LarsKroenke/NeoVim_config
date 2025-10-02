return {
  "github/copilot.vim",
  event = "VeryLazy", -- oder "InsertEnter"
  config = function()
    vim.g.copilot_no_tab_map = true   -- Tab nicht automatisch binden
    vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-K>", 'copilot#Next()', { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-H>", 'copilot#Previous()', { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-L>", 'copilot#Dismiss()', { silent = true, expr = true })
  end
}
