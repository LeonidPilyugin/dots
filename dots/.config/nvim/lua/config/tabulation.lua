vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = "cpp,c,cxx,h,hpp,vala,python,sh,zsh,lua,lammps",
        callback = function ()
            vim.o.tabstop = 4
            vim.o.expandtab = true
            vim.o.softtabstop = 4
            vim.o.shiftwidth = 4
        end
    }
)

vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = "plaintex,meson",
        callback = function ()
            vim.o.tabstop = 2
            vim.o.expandtab = true
            vim.o.softtabstop = 2
            vim.o.shiftwidth = 2
        end
    }
)
