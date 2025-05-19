local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazyrepo,
        lazypath
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- File tree
    {
        "lambdalisue/vim-fern",
        config = require("plugins.fern"),
    },

    -- Comments
    {
        "numToStr/Comment.nvim",
        config = require("plugins.comment"),
    },

    -- Surroundings
    {
        "tpope/vim-surround",
        config = require("plugins.surround"),
    },

    -- Calculator
    {
        "sk1418/HowMuch",
        config = require("plugins.howmuch"),
    },

    -- Terminal
    {
        "akinsho/toggleterm.nvim",
        config = require("plugins.toggleterm"),
    },
    
    -- LSP
    {
        "neovim/nvim-lspconfig",
        config = require("plugins.lspconfig"),
    },

    -- LSP manager
    {
        "williamboman/mason.nvim",
        config = require("plugins.mason"),
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },
    },

    -- Autocomplete
    {
        "hrsh7th/nvim-cmp",
        config = require("plugins.cmp"),
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
        },
    },

    -- Snipepts
    {
        "L3MON4D3/LuaSnip",
        config = require("plugins.luasnip"),
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
        },
    },

    -- Better highlight
    {
        "nvim-treesitter/nvim-treesitter",
        config = require("plugins.treesitter"),
    },

    -- Fuzzyfinder
    {
        "nvim-telescope/telescope.nvim",
        config = require("plugins.telescope"),
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
    },

    -- Lammps syntax
    {
        "tommason14/lammps.vim",
        config = require("plugins.lammps"),
    },

    -- Convert colortheme to lua
    -- "rktjmp/shipwright.nvim",

    -- Colorscheme creator
    -- "rktjmp/lush.nvim",
})
