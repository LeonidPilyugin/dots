-- Leader keys
vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"

-- Keymap ESC
vim.keymap.set({ "n", "v", "i" }, "<alt-;>", "<esc>", {})

-- Lazy menu
vim.keymap.set("n", "<esc>", ":Lazy<cr>", {})

-- Remove search highlight
vim.keymap.set("n", "<leader>i", "<esc>:noh<cr>")

-- Window navigation
vim.keymap.set("n", "<leader>l", "<C-w>l", {})
vim.keymap.set("n", "<leader>k", "<C-w>k", {})
vim.keymap.set("n", "<leader>j", "<C-w>j", {})
vim.keymap.set("n", "<leader>h", "<C-w>h", {})

-- Common exit keymaps
vim.keymap.set("n", "<leader>s", ":wa<cr>")
vim.keymap.set("n", "<leader>a", ":wqa<cr>")
vim.keymap.set("n", "<leader>q", ":qa!<cr>")

-- Paste only if yanced
vim.keymap.set({ "n", "v" }, "<leader>p", "\"0p")
vim.keymap.set("n", "<leader>P", "\"0P")

-- Move changing text to black hole
vim.keymap.set("v", "p", "\"_dP")
