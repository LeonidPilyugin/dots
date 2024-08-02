return {
    -- file tree
    "preservim/nerdtree",
    -- comments
    "tpope/vim-commentary",
    -- calculator
    "sk1418/HowMuch",
    -- terminal
    {
        "akinsho/toggleterm.nvim", event = "VeryLazy", version = "*",
        opts = {
            size = 20,
            open_mapping = "<c-x>",
            shell = string.format("export TERM=%s && %s", vim.env.TERM, vim.o.shell),
            shade_terminals = false,
        }
    },
    -- Colorscheme creator
    "rktjmp/lush.nvim",
    -- LSP
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    -- Autocomplete
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    -- Snipepts
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    -- Better highlight
    "nvim-treesitter/nvim-treesitter",
    -- Convert colortheme to lua
    "rktjmp/shipwright.nvim",
    "tommason14/lammps.vim",
}
