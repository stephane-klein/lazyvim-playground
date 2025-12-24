return {
  "MeanderingProgrammer/render-markdown.nvim",
  enabled = true,
  opts = {
    completions = {
      lsp = { enabled = true }
    },
    paragraph = {
      min_width = 100,
    },
    code = {
      width = "block",
      left_pad = 2,
      right_pad = 4,
    },
    heading = {
      width = "block",
      left_pad = 0,
      right_pad = 1,
      position = "inline",
      icons = false,
    },
    win_options = {
      conceallevel = {
        default = vim.api.nvim_get_option_value('conceallevel', {}),
        rendered = 3,
      },
      concealcursor = {
        default = vim.api.nvim_get_option_value('concealcursor', {}),
        rendered = 'nc',
      },
    },
  }
}
