return function()
    local conform = require("conform")

    conform.setup({
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "black" },
            latex = { "latexindent" },
            vala = { "uncrustify" },
            c = { "uncrustify" },
            json = { "jq" },
            zsh = { "beautysh" },
            bash = { "beautysh" },
        },
    })

    vim.keymap.set({ "n", "v" }, "<leader>f", function()
        conform.format({
            lsp_fallback = true,
            async = false,
            timeout_ms = 500,
        })
    end)
end
