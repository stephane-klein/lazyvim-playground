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

function _G.get_winbar()
  -- Get path relative to current working directory
  local filepath = vim.fn.expand("%:.")
  local modified = vim.bo.modified and " [+]" or ""
  local readonly = vim.bo.readonly and " [RO]" or ""

  -- Truncate from the left if too long
  local max_len = math.floor(vim.fn.winwidth(0) * 0.6)
  if #filepath > max_len then
    filepath = "..." .. filepath:sub(-(max_len - 3))
  end

  return filepath .. modified .. readonly
end

vim.opt.winbar = "%{%v:lua.get_winbar()%}"
