vim.wo.number = true
vim.opt.mouse = ""

-- Tabs
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Keymap ESC
vim.keymap.set('i', "<C-]>", '<Esc>', {})

-- Common exit keymaps
vim.keymap.set("n", "<C-s>", ":wa<cr>")
vim.keymap.set("i", "<C-s>", "<esc>:wa<cr>")
vim.keymap.set("n", "<C-a>", ":wqa<cr>")
vim.keymap.set("i", "<C-a>", "<esc>:wqa<cr>")
vim.keymap.set("n", "<C-q>", ":qa!<cr>")
vim.keymap.set("i", "<C-q>", "<esc>:qa!<cr>")

-- Paste only if yanced
vim.keymap.set('n', '<Leader>p', '"0p')
vim.keymap.set('n', '<Leader>P', '"0P')
vim.keymap.set('v', '<Leader>p', '"0p')

-- Buffers
vim.keymap.set('n', '.<C-N>', ':bnext<cr>')
vim.keymap.set('n', '.<C-P>', ':bprevious<cr>')
vim.keymap.set('n', '.<C-D>', ':bdelete<cr>')

-- Plugins
require("config.lazy")

-- NERDTree settings
vim.g.NERDTreeFileLines = 1
vim.keymap.set('n', '<C-e>', ':NERDTreeToggle<CR>', { desc = "Toggle NERDTree" })

-- HowMuch
vim.g.HowMuch_scale = 31
vim.keymap.set('v', '=', ':call HowMuch#HowMuch(0,0,0,"auto")<cr>')

-- LSP
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "pyright",                      -- Python
        "clangd",                       -- C
        "bashls",                       -- Bash
        "texlab",                       -- LaTeX
        "jsonls",                       -- JSON
        "yamlls",                       -- YAML
        "taplo",                        -- TOML
        "cmake",                        -- CMake
        "autotools_ls",                 -- Make
        "marksman",                     -- Markdown
    },
}
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.clangd.setup {}
lspconfig.bashls.setup {}
lspconfig.pkgbuild_language_server.setup {}
lspconfig.ltex.setup {}
lspconfig.jsonls.setup {}
lspconfig.yamlls.setup {}
lspconfig.taplo.setup {}

-- Autocomplete
local cmp = require("cmp")
cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
        require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    })
})

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
lspconfig["pyright"].setup { capabilities = capabilities }
lspconfig["clangd"].setup { capabilities = capabilities }
lspconfig["bashls"].setup { capabilities = capabilities }
lspconfig["ltex"].setup { capabilities = capabilities }
lspconfig["jsonls"].setup { capabilities = capabilities }
lspconfig["yamlls"].setup { capabilities = capabilities }
lspconfig["taplo"].setup { capabilities = capabilities }

-- Treesitter
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
    },
    highlight = {
        enable = true,
    },
}

if (os.getenv("TERM") == "linux")
then
    vim.cmd("colorscheme kawaii16")
    vim.g.NERDTreeDirArrowExpandable = '>'
    vim.g.NERDTreeDirArrowCollapsible = 'V'
else
    vim.cmd("colorscheme kawaii")
end
