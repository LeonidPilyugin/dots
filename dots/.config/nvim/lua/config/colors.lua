if (os.getenv("NVIM_COLORS") == "KAWAII") then
    if (os.getenv("TERM") == "linux") then
        vim.cmd("colorscheme kawaii16")
    else
        vim.cmd("colorscheme kawaii")
    end
elseif (os.getenv("NVIM_COLORS") == "NOIR") then
    vim.cmd("colorscheme noir")
end
