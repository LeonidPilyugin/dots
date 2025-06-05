local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local pr = function(n)
    return f( function(_, snip) return snip.captures[n] end )
end


return {
    s(
        {
            trig = "(.*)$",
            snippetType = "autosnippet",
            regTrig = true,
            wordTrig = false,
            desc = "Inline math",
        },
        fmta(
            [[
                <>\(<>\)
            ]],
            {
                pr(1),
                i(1),
            }
        )
    ),

    s(
        {
            trig = "^(%s*)mm",
            snippetType = "autosnippet",
            regTrig = true,
            wordTrig = false,
            desc = "Display math",
        },
        fmta(
            [[
                <>\[
                <>  <>
                <>\]
            ]],
            {
                pr(1),
                pr(1),
                i(1),
                pr(1),
            }
        )
    ),

    s(
        {
            trig = "^(%s*)ee",
            snippetType = "autosnippet",
            regTrig = true,
            wordTrig = false,
            desc = "Equation",
        },
        fmta(
            [[
                <>\begin {equation}
                <>  <>
                <>\end {equation}
            ]],
            {
                pr(1),
                pr(1),
                i(1),
                pr(1),
            }
        )
    ),

    s(
        {
            trig = "([^%a])ff",
            snippetType = "autosnippet",
            regTrig = true,
            wordTrig = false,
            desc = "Fraction",
        },
        fmta(
            [[
                <>\frac {<>} {<>}
            ]],
            {
                pr(1),
                i(1),
                i(2),
            }
        )
    ),
}
