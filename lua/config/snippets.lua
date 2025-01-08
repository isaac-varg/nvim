local ls = require "luasnip" -- Load LuaSnip
local s = ls.snippet          -- Define a snippet
local t = ls.text_node        -- Define a text node
local i = ls.insert_node      -- Define an insert node
local fmt = require("luasnip.extras.fmt").fmt -- Import the formatter

-- Define global snippets
ls.add_snippets("all", { -- "all" makes it available globally
    s("model",
      fmt(
        [[
        model {} {{
            id         String   @id @default(uuid())
            createdAt  DateTime @default(now()) @map("created_at")
            updatedAt  DateTime @updatedAt @map("updated_at")

            @@map("{}")
        }}
        ]],
        {
            i(1, "ModelSingular"), -- First placeholder for the singular model name
            i(2, "model_plural")  -- Second placeholder for the plural table name
        }
      )
    ),
})


