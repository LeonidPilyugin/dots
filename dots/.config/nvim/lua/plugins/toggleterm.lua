return function ()
    local toggleterm = require("toggleterm")

    toggleterm.setup({
        size = 20,
        shade_terminals = false,
        open_mapping = "<leader>x",
        insert_mappings = false,
        shell = string.format("export TERM=%s && %s", vim.env.TERM, vim.o.shell),
        direction = "horizontal",
        autochdir = false,
    })
end
