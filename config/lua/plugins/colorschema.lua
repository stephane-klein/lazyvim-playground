return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",  -- maximum contrast
        contrast = {
          terminal = true,
          sidebars = true,
          floating_windows = true,
        },
        on_highlights = function(hl, c)
          hl.WinBar = {
            fg = c.fg,
            bg = c.bg_dark,
          }
          hl.WinBarNC = {
            fg = c.dark5
          }
        end,
      })
      vim.cmd([[colorscheme tokyonight]])
    end,
  }
}
