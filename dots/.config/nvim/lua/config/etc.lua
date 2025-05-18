-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Disable mouse
vim.opt.mouse = ""

-- Tabs
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Automatically set colorcolumn for specific files
vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = "cpp,c,cxx,h,hpp,vala",
        command = "setlocal cc=120",
    }
)

vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = "python,sh,zsh,lammps,lua",
        command = "setlocal cc=80",
    }
)
