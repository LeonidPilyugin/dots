-- Leader keys
vim.g.mapleader = " "

-- Keymap ESC
vim.keymap.set({ "n", "v", "i" }, "<alt-;>", "<esc>",
    { desc = "ESC keymap" })

-- Lazy menu
vim.keymap.set("n", "<esc>;", ":Lazy<cr>",
    { desc = "Open Lazy window" })

-- Remove search highlight
vim.keymap.set("n", "<leader>i", ":noh<cr>",
    { desc = "Clear search highlight" })

-- Window navigation
vim.keymap.set("n", "<leader>l", "<C-w>l",
    { desc = "Switch to right buffer" })
vim.keymap.set("n", "<leader>k", "<C-w>k",
    { desc = "Switch to top buffer" })
vim.keymap.set("n", "<leader>j", "<C-w>j",
    { desc = "Switch to bottom buffer" })
vim.keymap.set("n", "<leader>h", "<C-w>h",
    { desc = "Switch to left buffer" })

-- Common exit keymaps
vim.keymap.set("n", "<leader>s", ":w<cr>",
    { desc = "Write buffer" })
vim.keymap.set("n", "<leader>a", ":wqa<cr>",
    { desc = "Write all buffers and quit" })
vim.keymap.set("n", "<leader>q", ":qa<cr>",
    { desc = "Quit all buffers" })

-- Paste only if yanced
vim.keymap.set({ "n", "v" }, "<leader>p", "\"0p",
    { desc = "Paste yanced line" })
vim.keymap.set("n", "<leader>P", "\"0P",
    { desc = "Paste yanced line" })

-- Move changing text to black hole
vim.keymap.set("v", "p", "\"_dP",
    { desc = "Move changing line to black hole" })
