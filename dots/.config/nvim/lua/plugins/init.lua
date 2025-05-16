return {
    -- File tree
    "preservim/nerdtree",

    -- Comments
    "tpope/vim-commentary",

    -- Calculator
    "sk1418/HowMuch",

    -- Terminal
    "akinsho/toggleterm.nvim",
    
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

    -- Fuzzyfinder
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- Lammps syntax
    "tommason14/lammps.vim",

    -- Convert colortheme to lua
    "rktjmp/shipwright.nvim",

    -- Colorscheme creator
    "rktjmp/lush.nvim",
}
