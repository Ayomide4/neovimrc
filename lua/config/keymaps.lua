-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map 'jk' to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })

-- Navigate to next buffer
vim.keymap.set("n", "<leader>tn", ":bnext<CR>", { noremap = true, silent = true })

-- Navigate to previous buffer
vim.keymap.set("n", "<leader>tp", ":bprevious<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "H", "^") -- move to the beginning of the line
vim.keymap.set("n", "L", "$") -- move to the end of the line
