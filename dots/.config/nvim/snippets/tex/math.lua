local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

local pr = function(n)
    return f( function(_, snip) return snip.captures[n] end )
end

return {
    s(
        {
            trig = [[^(\s*)mm]],
            desc = "Display math",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 0
            end,
        },
        fmta(
            [[
                <>\[
                <><><>
                <>\]
                <><>
            ]],
            { pr(1), pr(1), t("  "), i(1), pr(1), pr(1), i(0) }
        )
    ),

    s(
        {
            trig = [[^(.+)?,,]],
            desc = "Inline math",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 0
            end,
        },
        fmta(
            [[<>$<>$]],
            { pr(1), i(1) }
        )
    ),

    s(
        {
            trig = [[^(.+)?nn]],
            desc = "Equation environment",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 0
            end,
        },
        fmta(
            [[
                <>\begin{equation}
                <>  <>
                <>\end{equation}
                <>
            ]],
            { pr(1), pr(1), i(1), pr(1), pr(1) }
        )
    ),

    s(
        {
            trig = "_",
            desc = "Subscript",
            wordTrig = false,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[_{<>}]],
            { i(1) }
        )
    ),

    s(
        {
            trig = "^",
            desc = "Superscript",
            wordTrig = false,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[^{<>}]],
            { i(1) }
        )
    ),

    s(
        {
            trig = "ii",
            desc = "Integral",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\int\limits_{<>}^{<>} <> \ d<> ]],
            { i(1), i(2), i(3), i(4) }
        )
    ),

    s(
        {
            trig = "oi",
            desc = "Integral",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\oint\limits_{<>}^{<>} <> \ d<> ]],
            { i(1), i(2), i(3), i(4) }
        )
    ),


    s(
        {
            trig = "ss",
            desc = "Sum",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\sum_{<>}^{<>} ]],
            { i(1), i(2) }
        )
    ),

    s(
        {
            trig = "pp",
            desc = "Product",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\prod_{<>}^{<>} ]],
            { i(1), i(2) }
        )
    ),

    s(
        {
            trig = "(",
            desc = "Parentheses",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\left(<>\right)]],
            { i(1) }
        )
    ),

    s(
        {
            trig = "[",
            desc = "Brackets",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            "\\left[<>\\right]",
            { i(1) }
        )
    ),

    s(
        {
            trig = "{",
            desc = "Braces",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\left\{<>\right\}]],
            { i(1) }
        )
    ),

    s(
        {
            trig = "\\<",
            desc = "Angle brackets",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\left\langle<>\right\langle]],
            { i(1) }
        )
    ),

    s(
        {
            trig = "|",
            desc = "Pipes",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\left|<>\right|]],
            { i(1) }
        )
    ),

    s(
        {
            trig = "\\|",
            desc = "Double pipes",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\left\|<>\right\|]],
            { i(1) }
        )
    ),

    s(
        {
            trig = "ff",
            desc = "Fraction",
            wordTrig = true,
            snippetType = "autosnippet",
            condition = function()
                return vim.fn['vimtex#syntax#in_mathzone']() == 1
            end,
        },
        fmta(
            [[\frac{<>}{<>} <>]],
            { i(1), i(2), i(0) }
        )
    )
}
