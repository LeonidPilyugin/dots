-- Disable mouse
vim.opt.mouse = ""

-- Always latex
vim.g.tex_flavor = "latex"

-- Allow local config
vim.o.exrc = true
vim.o.secure = true

-- Format settings
vim.o.fo = "tcqjr"

-- Remove trailing whitespaces
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
