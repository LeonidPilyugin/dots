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

local greek_snippet = function (trig, expand)
    return s(
        { trig = trig, snippetType = "autosnippet" },
        { t(expand) }
    )
end

return {
    greek_snippet(";a", "\\alpha"),
    greek_snippet(";la", "\\Alpha"),
    
    greek_snippet(";b", "\\beta"),
    greek_snippet(";lb", "\\Beta"),

    greek_snippet(";g", "\\gamma"),
    greek_snippet(";lg", "\\Gamma"),

    greek_snippet(";d", "\\delta"),
    greek_snippet(";ld", "\\Delta"),

    greek_snippet(";e", "\\epsilon"),
    greek_snippet(";ve", "\\varepsilon"),
    greek_snippet(";le", "E"),

    greek_snippet(";z", "\\zeta"),
    greek_snippet(";lz", "Z"),

    greek_snippet(";j", "\\eta"),
    greek_snippet(";lj", "H"),

    greek_snippet(";q", "\\theta"),
    greek_snippet(";vq", "\\vartheta"),
    greek_snippet(";lq", "\\Theta"),

    greek_snippet(";i", "\\iota"),
    greek_snippet(";li", "I"),

    greek_snippet(";k", "\\kappa"),
    greek_snippet(";lk", "K"),

    greek_snippet(";y", "\\lambda"),
    greek_snippet(";ly", "\\Lambda"),

    greek_snippet(";m", "\\mu"),
    greek_snippet(";lm", "M"),

    greek_snippet(";n", "\\nu"),
    greek_snippet(";ln", "N"),

    greek_snippet(";x", "\\xi"),
    greek_snippet(";lx", "\\Xi"),

    greek_snippet(";o", "o"),
    greek_snippet(";lo", "O"),

    greek_snippet(";p", "\\pi"),
    greek_snippet(";lp", "\\Pi"),

    greek_snippet(";r", "\\rho"),
    greek_snippet(";vr", "\\varrho"),
    greek_snippet(";lr", "P"),

    greek_snippet(";s", "\\sigma"),
    greek_snippet(";ls", "\\Sigma"),

    greek_snippet(";t", "\\tau"),
    greek_snippet(";lt", "T"),

    greek_snippet(";u", "\\upsilon"),
    greek_snippet(";lu", "\\Upsilon"),

    greek_snippet(";f", "\\phi"),
    greek_snippet(";vf", "\\varphi"),
    greek_snippet(";lf", "\\Phi"),

    greek_snippet(";c", "\\chi"),
    greek_snippet(";lc", "X"),

    greek_snippet(";h", "\\psi"),
    greek_snippet(";lh", "\\Psi"),

    greek_snippet(";w", "\\omega"),
    greek_snippet(";lw", "\\Omega"),
}
