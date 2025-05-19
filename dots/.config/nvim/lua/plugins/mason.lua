return function ()
    require("mason").setup()
    require("mason-lspconfig").setup({
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
            "biome",                        -- web
            -- "vala_ls",                      -- Vala
        },
    })
end
