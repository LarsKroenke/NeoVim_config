-- Catpuccin
-- return {
--  {
--    "catppuccin/nvim",
--    lazy = false,
--    name = "catppuccin",
--    priority = 1000,
--    config = function()
--      vim.cmd.colorscheme "catppuccin-mocha"
--    end
--  }
--}

-- GRUVBOX
--return {
--  "ellisonleao/gruvbox.nvim",
--  priority = 1000, -- make sure to load this before all the other start plugins
--  config = function()
--    require("gruvbox").setup({
--      overrides = {
--        SignColumn = { bg = "#282828" },
--        NvimTreeCutHL = { fg = "#fb4934", bg = "#282828" },
--        NvimTreeCopiedHL = { fg = "#b8bb26", bg = "#282828" },
--        DiagnosticSignError = { fg = "#fb4934", bg = "#282828" },
--        DiagnosticSignWarn = { fg = "#fabd2f", bg = "#282828" },
--        DiagnosticSignHint = { fg = "#8ec07c", bg = "#282828" },
--        DiagnosticSignInfo = { fg = "#d3869b", bg = "#282828" },
--        DiffText = { fg = "#ebdbb2", bg = "#3c3836" },
--        DiffAdd = { fg = "#ebdbb2", bg = "#32361a" },
--        -- Markdown comment highlighting (muted)
--        htmlComment = { fg = "#928374", italic = true },
--        htmlCommentPart = { fg = "#928374", italic = true },
--        markdownHtmlComment = { fg = "#928374", italic = true },
--        RenderMarkdownHtmlComment = { fg = "#928374", italic = true },
--      }
--    })
--    vim.cmd("colorscheme gruvbox")
--  end,
--}

-- AURA Theme
return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.cmd([[colorscheme aura-dark]])
    end
  },
  {
    "lervag/vimtex",
    ft = "tex",
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "tex",
        callback = function()
          -- Delimiter { [
          vim.cmd [[highlight texDelim guifg=#fed10a]]
          -- vim.cmd [[highlight texDelim guifg=#cf53cc]]
          -- Section-Überschriften
          vim.cmd [[highlight texCmdPart guifg=#f0bf72]]
          -- begin{} end{}
          vim.cmd [[highlight texCmdEnv guifg=#febf72]]
          -- Arguments in environments \input{}
          vim.cmd [[highlight texFileArg guifg=#e8e7ea]]
          -- Special Character \Delta
          -- vim.cmd [[highlight texCmd guifg=#55ffbc]]
          vim.cmd [[highlight texCmd guifg=#febf72]]
          -- Documentclass
          vim.cmd [[highlight texCmdClass guifg=#905aff]]
          -- \input
          vim.cmd [[highlight texCmdInput guifg=#905aff]]
          -- \usepackage
          vim.cmd [[highlight texCmdPackage guifg=#905aff]]
          -- Environment arguments \begin
          vim.cmd [[highlight texEnvArgName guifg=#e8e7ea]]
          -- Math environment argument
          vim.cmd [[highlight texMathEnvArgName guifg=#e8e7ea]]
          -- documentclass options
          vim.cmd [[highlight texFileOpt guifg=#e8e7ea]]
          -- usepackage arguments
          vim.cmd [[highlight texFilesArg guifg=#905aff]]
          vim.cmd [[highlight texFilesOpt guifg=#e8e7ea]]
          -- equal =
          vim.cmd [[highlight texOptEqual guifg=#e8e7ea]]
          -- section title
          vim.cmd [[highlight texPartArgTitle guifg=#febf72]]
          -- LaTeX Command
          -- vim.cmd [[highlight texE3Function guifg=#febf72]]
          -- inline math delim
          vim.cmd [[highlight texMathDelimZoneTI guifg=#905aff]]
          vim.cmd [[highlight texMathCmd guifg=#55ffbc]]
          vim.cmd [[highlight texMathOper guifg=#55ffbc]]
          -- item
          vim.cmd [[highlight texCmdItem guifg=#905aff]]
          -- renewcommand
          vim.cmd [[highlight texCmdDef guifg=#febf72]]
          -- references
          vim.cmd [[highlight texCmdRef guifg=#905aff]]
          vim.cmd [[highlight texRefArg guifg=#e8e7ea]]
          -- custom definitions
          --vim.cmd([[
          --augroup MyTextHighlight
          --  autocmd!
          --  autocmd FileType tex syntax match texSpecialCommand "\\pagenumbering"
          --  autocmd FileType tex highlight texSpecialCommand guifg=#febf72
          --augroup END
          --]])
        end,
      })
    end
  }
}
