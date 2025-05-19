-- Set splellcheck for TeX
vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = "plaintex,tex",
        command = "setlocal spell spelllang=ru",
    }
)
