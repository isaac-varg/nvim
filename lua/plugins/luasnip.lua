-- a snippet engine
-- used a source for nvim-cmp
-- friendly snippets is required because it is a collection of snippets for luasnip (this plugin)

return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.3",
        build = "make install_jsregexp",
        dependencies = {
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets'
        },
        config = function()
            -- Load LuaSnip
            local luasnip = require "luasnip"

            -- Dynamically load all snippets, including subdirectories
            require("luasnip.loaders.from_lua").lazy_load({
                paths = "~/.config/nvim/lua/config/snippets"
            })

            -- Add key mappings for navigating snippets
            -- disabling this now until i see what others use for this because this breaks normal tabbing lol
            --      vim.keymap.set({ "i", "s" }, "<Tab>", function()
            --          if luasnip.jumpable(1) then
            --              luasnip.jump(1)
            --          end
            --      end, { silent = true })

            --      vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
            --          if luasnip.jumpable(-1) then
            --              luasnip.jump(-1)
            --          end
            --      end, { silent = true })
        end,
    }
}
