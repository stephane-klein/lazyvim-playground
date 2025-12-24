-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = "*.lua",
  callback = function()
    vim.defer_fn(function()
      vim.wo.foldmethod = "marker"
      vim.wo.foldmarker = "{{{,}}}"
    end, 100)
  end,
})
