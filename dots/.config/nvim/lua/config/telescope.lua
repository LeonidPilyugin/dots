local telescope = require("telescope")

telescope.setup({
    defaults = { 
        file_ignore_patterns = { 
            "%.trj$",
            "%.dump$",
            "%.lammpsdump$",
            "^.git/", 
        }
    },
    pickers = {
        find_files = {
            hidden = true,
        },
    },
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>tf", builtin.find_files,
    { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>tg", builtin.live_grep,
    { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>tb", builtin.buffers,
    { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>th", builtin.help_tags,
    { desc = "Telescope help tags" })
