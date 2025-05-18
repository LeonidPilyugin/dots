-- Keymaps
vim.keymap.set("n", "<Leader>e", ":Fern -drawer -toggle .<cr>",
    { desc = "Toggle Fern" })

local ferngroup = vim.api.nvim_create_augroup("fern-custom",
    { clear = true })

local function define_fern_mappings()
    vim.o.number = false
    vim.o.relativenumber = false
    vim.keymap.set("n", "<cr>", "<Plug>(fern-action-open)",
        { buffer = true, desc = "Fern open" })
    vim.keymap.set("n", "i", "<Plug>(fern-action-open:split)",
        { buffer = true, desc = "Fern open in split" })
    vim.keymap.set("n", "s", "<Plug>(fern-action-open:vsplit)",
        { buffer = true, desc = "Fern open in vsplit" })
    vim.keymap.set("n", "r", "<Plug>(fern-action-reload)",
        { buffer = true, desc = "Fern reload" })
    vim.keymap.set("n", "d", "<Plug>(fern-action-remove)",
        { buffer = true, desc = "Fern remove" })
    vim.keymap.set("n", "m", "<Plug>(fern-action-move)",
        { buffer = true, desc = "Fern move" })
    vim.keymap.set("n", "n", "<Plug>(fern-action-new-path)",
        { buffer = true, desc = "Fern create ne path" })
    vim.keymap.set("n", "u", "<Plug>(fern-action-leave)",
        { buffer = true, desc = "Fern leave directory" })
    vim.keymap.set("n", "e", "<Plug>(fern-action-enter)",
        { buffer = true , desc = "Ferc enter directory"})
    vim.keymap.set("n", "p", "<Plug>(fern-action-preview)",
        { buffer = true, desc = "Fern preview file" })
    vim.keymap.set("n", "cd", "<Plug>(fern-action-cd)",
        { buffer = true, desc = "Fern change directory" })
    vim.cmd([[
        nmap <buffer><expr>
        \ <Plug>(fern-my-expand-or-collapse)
          \ fern#smart#leaf(
          \   "\<Plug>(fern-action-collapse)",
          \   "\<Plug>(fern-action-expand)",
          \   "\<Plug>(fern-action-collapse)",
        \ )
    ]])
    vim.keymap.set("n", "o", "<Plug>(fern-my-expand-or-collapse)",
        { buffer = true, remap = false, desc = "Fern expand/collapse directory" })
end

vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = "fern",
        group = ferngroup,
        callback = define_fern_mappings,
    }
)

-- Hide patterns
local hide = "\\.trj$"
hide = hide .. "\\|" .. "\\.dump$"
hide = hide .. "\\|" .. "\\.lammpsdump$"
hide = hide .. "\\|" .. "\\.checkpoint$"
hide = hide .. "\\|" .. "^\\.git$"
vim.g["fern#default_exclude"] = hide
