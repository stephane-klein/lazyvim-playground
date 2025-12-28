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
-- Disable some annoying features like swapfile {{{
-- Disable swap files
vim.opt.swapfile = false

-- Disable backup files (file~)
vim.opt.backup = false
vim.opt.writebackup = false

-- Keep undo history but centralize it (useful feature to keep)
local undo_dir = vim.fn.stdpath('state') .. '/undo'
if vim.fn.isdirectory(undo_dir) == 0 then
  vim.fn.mkdir(undo_dir, 'p')
end
vim.opt.undofile = true
vim.opt.undodir = undo_dir
-- }}
