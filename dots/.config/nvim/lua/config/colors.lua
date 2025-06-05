if (os.getenv("NVIM_NO_COLORS") == nil) then
    if (os.getenv("TERM") == "linux") then
        vim.cmd("colorscheme kawaii16")
    else
        vim.cmd("colorscheme kawaii")
    end
end
