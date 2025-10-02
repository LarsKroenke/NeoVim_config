-- ~/.config/nvim/lua/lars/plugins/rainbow_delimiters.lua
return {
  "HiPhish/rainbow-delimiters.nvim",
  config = function()
    -- Farben definieren
    vim.opt.termguicolors = true
    vim.cmd [[
      highlight RainbowDelimiterYellow guifg=#f9cd0b
      highlight RainbowDelimiterPink guifg=#ca52c8
      highlight RainbowDelimiterBlue guifg=#1988ff
      ]]

    -- Rainbow konfigurieren
    vim.g.rainbow_delimiters = {
        strategy = {
            [''] = 'rainbow-delimiters.strategy.global',
            vim = 'rainbow-delimiters.strategy.local',
        },
        query = {
            [''] = 'rainbow-delimiters',
            lua = 'rainbow-blocks',
        },
        priority = {
            [''] = 110,
            lua = 210,
        },
        highlight = {
            'RainbowDelimiterYellow',
            'RainbowDelimiterPink',
            'RainbowDelimiterBlue',
        },
    }
  end
}
