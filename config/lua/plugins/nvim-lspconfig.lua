return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Fix ESLint root_dir
        eslint = {
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern(
              ".eslintrc",
              ".eslintrc.js",
              ".eslintrc.cjs",
              ".eslintrc.yaml",
              ".eslintrc.yml",
              ".eslintrc.json",
              "eslint.config.js",
              "eslint.config.mjs",
              "eslint.config.cjs",
              "package.json"
            )(fname)
          end,
        },
        -- Fix vtsls root_dir
        vtsls = {
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern(
              "tsconfig.json",
              "jsconfig.json",
              "package.json",
              ".git"
            )(fname)
          end,
        },
      },
    },
  },
}
