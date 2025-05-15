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
        -- "vala_ls",                      -- Vala
        "biome",                        -- web
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
-- lspconfig.vala_ls.setup{}
lspconfig.biome.setup{}
