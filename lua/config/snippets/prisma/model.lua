local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
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
                    i(1, "ModelNameSingular"),
                    i(2, "model_name_plural"),
                }
            )
        )
}


