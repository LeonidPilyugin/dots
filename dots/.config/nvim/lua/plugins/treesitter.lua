return function ()
    require("nvim-treesitter.configs").setup {
        ensure_installed = {
            "c",
            "python",
            "lua",
            "markdown",
            "markdown_inline",
            "asm",
            "bash",
            "cmake",
            "comment",
            "cpp",
            "csv",
            "cuda",
            "gnuplot",
            "json",
            "make",
            "nasm",
            "perl",
            "regex",
            "rst",
            "toml",
            "xml",
            "yaml",
            "vala",
            "meson",
            "javascript",
        },
        highlight = {
            enable = true,
        },
    }
end
