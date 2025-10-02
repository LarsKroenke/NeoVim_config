return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
},
  config = function(_, opts)
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#222222" })

    require("ibl").setup(opts)
  end,
}

