-- Keymaps
vim.keymap.set("n", "<Leader>e", ":Fern -drawer -toggle .<cr>",
    { desc = "Toggle NERDTree" })

local ferngroup = vim.api.nvim_create_augroup("fern-custom",
    { clear = true })

local function define_fern_mappings()
    vim.keymap.set("n", "o", "<Plug>(fern-action-open)",
        { buffer = true })
    vim.keymap.set("n", "i", "<Plug>(fern-action-open:split)",
        { buffer = true })
    vim.keymap.set("n", "s", "<Plug>(fern-action-open:vsplit)",
        { buffer = true })
    vim.keymap.set("n", "r", "<Plug>(fern-action-reload)",
        { buffer = true })
    vim.keymap.set("n", "d", "<Plug>(fern-action-remove)",
        { buffer = true })
    vim.keymap.set("n", "m", "<Plug>(fern-action-move)",
        { buffer = true })
    vim.keymap.set("n", "n", "<Plug>(fern-action-new-path)",
        { buffer = true })
    vim.keymap.set("n", "u", "<Plug>(fern-action-leave)",
        { buffer = true })
    vim.keymap.set("n", "e", "<Plug>(fern-action-enter)",
        { buffer = true })
    vim.keymap.set("n", "p", "<Plug>(fern-action-preview)",
        { buffer = true })
    vim.cmd([[
        nmap <buffer><expr>
        \ <Plug>(fern-my-expand-or-collapse)
          \ fern#smart#leaf(
          \   "\<Plug>(fern-action-collapse)",
          \   "\<Plug>(fern-action-expand)",
          \   "\<Plug>(fern-action-collapse)",
        \ )
    ]])
    vim.keymap.set("n", "<cr>", "<Plug>(fern-my-expand-or-collapse)",
        { buffer = true, remap = false })
end

vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = "fern",
        group = ferngroup,
        callback = define_fern_mappings,
    }
)

-- Show hidden files
vim.g["fern#default_hidden"] = 1

-- Hide patterns
local hide = "\\.trj$"
hide = hide .. "\\|" .. "\\.dump$"
hide = hide .. "\\|" .. "\\.lammpsdump$"
hide = hide .. "\\|" .. "^\\.git$"
vim.g["fern#default_exclude"] = hide
