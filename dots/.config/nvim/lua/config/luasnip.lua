require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<tab>",
})

require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnip/"})

vim.cmd[[
    " Use tab to expand and jump through snippets
    imap <silent><expr> <tab> luasnip#expand_or_jumpable() ? "<Plug>luasnip-expand-or-jump" : "<Tab>" 
    smap <silent><expr> <tab> luasnip#jumpable(1) ? "<Plug>luasnip-jump-next" : "<Tab>"

    " Use Shift-tab to jump backwards through snippets
    imap <silent><expr> <S-tab> luasnip#jumpable(-1) ? "<Plug>luasnip-jump-prev" : "<S-Tab>"
    smap <silent><expr> <S-tab> luasnip#jumpable(-1) ? "<Plug>luasnip-jump-prev" : "<S-Tab>"
]]
