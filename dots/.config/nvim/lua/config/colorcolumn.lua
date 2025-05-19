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
        pattern = "python,sh,zsh,lammps,lua,plaintex,tex,meson,yaml,json",
        command = "setlocal cc=80",
    }
)
