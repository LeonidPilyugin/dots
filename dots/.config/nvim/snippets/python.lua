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

return {
    s(
        {
            trig="main", 
            dscr="Main code block",
        },
        {
            t({
                "if __name__ == \"__main__\":",
                ""
            }),
        }
    ),
    s(
        {
            trig="#",
            dscr="Shebang",
        },
        {
            t({
                "#!/usr/bin/env python3",
                "",
            }),
        }
    ),
    s(
        {
            trig="mpl",
            dscr="Import matplotlib",
        },
        {
            t({
                "from matplotlib import pyplot as plt",
                "plt.style.use(\"https://raw.githubusercontent.com/LeonidPilyugin/mpl-style/refs/heads/main/simple.mplstyle\")",
                "",
            }),
        }
    ),
    s(
        {
            trig="np",
            dscr="Import numpy",
        },
        {
            t({
                "import numpy as np",
                "",
            }),
        }
    ),
    s(
        {
            trig="pd",
            dscr="Import pandas",
        },
        {
            t({
                "import pandas as pd",
                "",
            }),
        }
    ),
}

