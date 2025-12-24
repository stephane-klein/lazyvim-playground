-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- cutlass.nvim equivalent {{{
-- Delete/change operations don't yank (use "m" for cut/move instead)
vim.keymap.set({ "n", "x" }, "d", '"_d', { desc = "Delete without yanking" })
vim.keymap.set("n", "dd", '"_dd', { desc = "Delete line without yanking" })
vim.keymap.set({ "n", "x" }, "D", '"_D', { desc = "Delete to end of line without yanking" })
vim.keymap.set({ "n", "x" }, "c", '"_c', { desc = "Change without yanking" })
vim.keymap.set({ "n", "x" }, "C", '"_C', { desc = "Change to end of line without yanking" })
vim.keymap.set({ "n", "x" }, "x", '"_x', { desc = "Delete character without yanking" })
vim.keymap.set({ "n", "x" }, "X", '"_X', { desc = "Delete character before without yanking" })

-- "m" for move/cut (delete with yank)
vim.keymap.set({ "n", "x" }, "m", "d", { desc = "Cut (move)" })
vim.keymap.set("n", "mm", "dd", { desc = "Cut line (move)" })
vim.keymap.set({ "n", "x" }, "M", "D", { desc = "Cut to end of line (move)" })

-- Preserve marks functionality with "gm"
vim.keymap.set("n", "gm", "m", { desc = "Set mark" })

-- }}}
