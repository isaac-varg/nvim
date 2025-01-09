local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt

-- helper to convert camel to snake case for @maps
local function camel_to_snake(args)
    local input = args[1][1] or ""
    local result = input:gsub("([A-Z])", "_%1"):lower():gsub("^_", "")
    return result
end

return {
    s("field",
      fmt(
        [[
        {} {} @map("{}")
        ]],
        {
            i(1, "fieldName"),
            i(2, "String"),
            d(3, function(args)
                return ls.snippet_node(nil, {
                    t(camel_to_snake(args))
                })
            end, {1})
        }
      )
    )
}
