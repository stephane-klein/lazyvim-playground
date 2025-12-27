return {
  "folke/snacks.nvim",
  keys = {
    { "<leader><space>", false }, -- Because I use custom keymap based on <space><space> to split windows
  },
  opts = {
    explorer = {
      replace_netrw = true,
    },
    picker = {
      layouts = {
        vertical = {
          layout = {
            width = 0.9,
            height = 0.9
          }
        }
      },
      layout = {
        preset = "vertical",
      },
    },
    zen = {
      toggles = {
        dim = false,
      }
    },
    styles = {
      zen = {
        backdrop = { transparent = true, blend = 30 },
        keys = { q = "close" },
      }
    }
  },
}
