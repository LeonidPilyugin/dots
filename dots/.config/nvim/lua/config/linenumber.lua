-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

vim.keymap.set("n", "<leader>;",
    function ()
        vim.o.number = not vim.o.number
        vim.o.relativenumber = vim.o.number
    end
)
