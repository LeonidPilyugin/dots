return function ()
    vim.g.HowMuch_scale = 7
    vim.keymap.set("v", "<Leader>=", ":call HowMuch#HowMuch(0,0,0,\"auto\")<cr>",
        { desc = "Calculate via HowMuch" })
end
