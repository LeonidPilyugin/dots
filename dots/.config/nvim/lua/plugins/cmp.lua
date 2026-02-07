return function ()
    local cmp = require("cmp")
    cmp.setup({
        snippet = {
            expand = function(args)
            require("luasnip").lsp_expand(args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<cr>"] = cmp.mapping.confirm({ select = false }),
        }),
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "path" },
        }, {
            { name = "buffer" },
        })
    })

    cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" }
        }
    })

    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" }
        }, {
          { name = "cmdline" }
        }),
        matching = { disallow_symbol_nonprefix_matching = false }
    })

    cmp.setup({
        mapping = cmp.mapping.preset.insert({
        ["<tab>"] = cmp.mapping.confirm({ select = false }),
      })
    })

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
    -- local lspconfig = require("lspconfig") -- vim.lsp.config
    -- local lspconfig = vim.lsp.config
    -- vim.lsp.enable("pyright")
    -- vim.lsp.enable("clangd")
    -- vim.lsp.enable("bashls")
    -- vim.lsp.enable("texlab")
    -- vim.lsp.enable("jsonls")
    -- vim.lsp.enable("yamlls")
    -- vim.lsp.enable("taplo")
    -- vim.lsp.enable("biome")
    -- vim.lsp.enable("cmake")
    -- vim.lsp.enable("autotools_ls")
    -- vim.lsp.enable("marksman")
    -- lspconfig["pyright"].setup({ capabilities = capabilities })
    -- lspconfig["clangd"].setup({ capabilities = capabilities })
    -- lspconfig["bashls"].setup({ capabilities = capabilities })
    -- lspconfig["texlab"].setup({ capabilities = capabilities })
    -- lspconfig["jsonls"].setup({ capabilities = capabilities })
    -- lspconfig["yamlls"].setup({ capabilities = capabilities })
    -- lspconfig["taplo"].setup({ capabilities = capabilities })
    -- lspconfig["biome"].setup({ capabilities = capabilities })
    -- lspconfig["cmake"].setup({ capabilities = capabilities })
    -- lspconfig["autotools_ls"].setup({ capabilities = capabilities })
    -- lspconfig["marksman"].setup({ capabilities = capabilities })
    -- lspconfig["vala_ls"].setup({ capabilities = capabilities })
end
