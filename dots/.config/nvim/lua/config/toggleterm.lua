toggleterm = require("toggleterm")

toggleterm.setup({
    size = 20,
    shade_terminals = false,
    open_mapping = "<Leader>x",
    shell = string.format("export TERM=%s && %s", vim.env.TERM, vim.o.shell),
    direction = "horizontal",
    autochdir = true,
})
