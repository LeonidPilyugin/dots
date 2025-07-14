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
            trig = [[^(\s*)::]],
            desc = "Plain valadoc comment",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>/**
                <> * <>
                <> *
                <> * <>
                <> */
            ]],
            {
                pr(1),
                pr(1),
                i(1, "Brief description"),
                pr(1),
                pr(1),
                i(2, "Long description"),
                pr(1),
            }
        )
    ),

    s(
        {
            trig = [[^(\s*)\.\.]],
            desc = "Inherit valadoc comment",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>/**
                <> * {@inheritDoc}
                <> */
            ]],
            {
                pr(1),
                pr(1),
                pr(1),
            }
        )
    ),


    s(
        {
            trig = [[^(\s*);;]],
            desc = "Method valadoc comment",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>/**
                <> * <>
                <> *
                <> * <><>
                <> */
            ]],
            {
                pr(1),
                pr(1),
                i(1, "Brief description"),
                pr(1),
                pr(1),
                i(2, "Long description"),
                d(
                    3,
                    function(args, parent, old_state, user_args)
                        local fallback = sn(nil, { t("") } )

                        local row = vim.api.nvim_win_get_cursor(0)[1]
                        local text = table.concat(
                            vim.api.nvim_buf_get_lines(0, row, -1, true),
                            " "
                        ):gsub("%s+", " ")

                        text = string.gsub(text, "requires%s*%(.*%)", "")
                        text = string.gsub(text, "ensures%s*%(.*%)", "")

                        local eom = math.min(
                            string.find(text, ";"),
                            string.find(text, "{")
                        )

                        text = text:sub(1, eom)

                        if eom == nil then return fallback end

                        local r_type = string.match(
                            text,
                            "([%w_]+)%s+[%w_]+%("
                        )

                        if r_type == nil then return fallback end

                        -- Detect if method returns anything
                        local returns = r_type ~= "void"

                        -- Get method arguments
                        local argstring = string.match(
                            text,
                            "%((.*)%)"
                        )

                        if argstring == nil then return fallback end

                        local arguments = {}
                        for k, v in string.gmatch(
                            argstring,
                            "%w+%s(%w+)"
                        ) do
                            table.insert(arguments, k)
                        end

                        -- Get exceptions
                        local excstring = text:match(
                            "throws (.*)"
                        )
                        local exceptions = {}
                        if excstring ~= nil then
                            for k, v in string.gmatch(
                                excstring,
                                "([%w%.]+)"
                            ) do
                                table.insert(exceptions, k)
                            end
                        end

                        -- Construct return value
                        nodes = {}

                        table.insert(nodes, t({""}))

                        local index = 1

                        if returns then
                            table.insert(
                                nodes,
                                sn(
                                    index,
                                    {
                                        t({"", parent.captures[1]}),
                                        t(" * "),
                                        t("@return "),
                                        i(1, "description"),
                                    }
                                )
                            )
                            index = index + 1
                        end

                        for _, arg in ipairs(arguments) do
                            table.insert(
                                nodes,
                                sn(
                                    index,
                                    {
                                        t({"", parent.captures[1]}),
                                        t(" * "),
                                        t("@param " .. arg .. " "),
                                        i(1, "description"),
                                    }
                                )
                            )
                            index = index + 1
                        end

                        for _, exc in ipairs(exceptions) do
                            table.insert(
                                nodes,
                                sn(
                                    index,
                                    {
                                        t({"", parent.captures[1]}),
                                        t(" * "),
                                        t("@throws " .. exc .. " "),
                                        i(1, "description"),
                                    }
                                )
                            )
                            index = index + 1
                        end

                        return isn(
                            nil,
                            nodes,
                            "$PARENT_INDENT"
                        )
                    end
                ),
                pr(1),
            }
        )
    ),

    s(
        {
            trig = [[^(\s*\*\s.*);d]],
            desc = "Deprecated taglet",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>@deprecated <>
            ]],
            {
                pr(1),
                i(1, "version"),
            }
        )
    ),

    s(
        {
            trig = [[^(\s*\*\s.*);s]],
            desc = "See taglet",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>@see <>
            ]],
            {
                pr(1),
                i(1, "node-name"),
            }
        )
    ),

    s(
        {
            trig = [[^(\s*\*\s.*);p]],
            desc = "Param taglet",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>@param <> <>
            ]],
            {
                pr(1),
                i(1, "param-name"),
                i(2, "description"),
            }
        )
    ),

    s(
        {
            trig = [[^(\s*\*\s.*);i]],
            desc = "Since taglet",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>@since <>
            ]],
            {
                pr(1),
                i(1, "version"),
            }
        )
    ),

    s(
        {
            trig = [[^(\s*\*\s.*);r]],
            desc = "Return taglet",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>@return <>
            ]],
            {
                pr(1),
                i(1, "description"),
            }
        )
    ),

    s(
        {
            trig = [[^(\s*\*\s.*);t]],
            desc = "Throws taglet",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>@throws <> <>
            ]],
            {
                pr(1),
                i(1, "exception"),
                i(2, "description"),
            }
        )
    ),

    s(
        {
            trig = [[^(\s*\*\s.*);h]],
            desc = "InheritDoc taglet",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>{@inheritDoc}
            ]],
            {
                pr(1),
            }
        )
    ),

    s(
        {
            trig = [[^(\s*\*\s.*);l]],
            desc = "Link taglet",
            regTrig = true,
            trigEngine = "ecma",
            snippetType = "autosnippet",
        },
        fmta(
            [[
                <>{@link <>}<>
            ]],
            {
                pr(1),
                i(1, "node"),
                i(0),
            }
        )
    ),
}
