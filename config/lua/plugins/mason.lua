return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      -- Misc
      "prettierd",
      "terraform",

      -- Webdev
      "css-lsp",
      "svelte-language-server",
      "typescript-language-server",
      "tailwindcss-language-server",
      "eslint-lsp",

      -- Golang
      "goimports",
      "gofumpt",
      "gopls",

      -- Script
      "shfmt",
      "bash-language-server",
      "shellcheck"
    }
  }
}
