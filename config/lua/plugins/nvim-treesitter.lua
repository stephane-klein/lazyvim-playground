return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "toml",
    })

    -- Register the custom predicate
    require("vim.treesitter.query").add_predicate("is-mise?", function(_, _, bufnr, _)
      local filepath = vim.api.nvim_buf_get_name(tonumber(bufnr) or 0)
      local filename = vim.fn.fnamemodify(filepath, ":t")
      return string.match(filename, ".*mise.*%.toml$") ~= nil
    end, { force = true, all = false })

    return opts
  end,
}
