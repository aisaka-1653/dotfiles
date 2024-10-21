return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    ---@class CatppuccinOptions
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        mini = true,
      },
    },
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    config = function(_, opts)
      require("mini.indentscope").setup(opts)
      vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#7dcfff" })
    end,
  },
}
