return function()
    local lint = require("lint")

    lint.linters_by_ft = {
        vala = { "vala_lint" },
        zsh = { "shellcheck" },
        bash = { "shellcheck" },
        lua = { "luacheck" },
        python = { "pylint" },
    }

    vim.keymap.set("n", "<leader>ff", function()
        lint.try_lint()
    end)
end
