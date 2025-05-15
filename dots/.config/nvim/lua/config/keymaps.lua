-- Leader keys
vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"

-- Keymap ESC
vim.keymap.set('i', "<Alp-;>", '<Esc>', {})
vim.keymap.set('n', "<Alt-;>", '<Esc>', {})
vim.keymap.set('v', "<Alt-;>", '<Esc>', {})

-- Lazy menu
vim.keymap.set('n', "<Esc>", ':Lazy<cr>', {})

-- Remove search highlight
vim.keymap.set('n', "<Leader>i", '<esc>:noh<cr>')

-- Window navigation
vim.keymap.set('n', "<Leader>l", '<C-w>l', {})
vim.keymap.set('n', "<Leader>k", '<C-w>k', {})
vim.keymap.set('n', "<Leader>j", '<C-w>j', {})
vim.keymap.set('n', "<Leader>h", '<C-w>h', {})

-- Common exit keymaps
vim.keymap.set("n", "<Leader>s", ":wa<cr>")
vim.keymap.set("n", "<Leader>a", ":wqa<cr>")
vim.keymap.set("n", "<Leader>q", ":qa!<cr>")

-- Paste only if yanced
vim.keymap.set('n', '<Leader>p', '"0p')
vim.keymap.set('n', '<Leader>P', '"0P')
vim.keymap.set('v', '<Leader>p', '"0p')

-- Move changing text to black hole
vim.keymap.set('v', 'p', '"_dP')
