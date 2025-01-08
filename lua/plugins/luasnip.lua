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
            require "luasnip.loaders.from_vscode".lazy_load()
            require "config.snippets" -- Load your custom snippets

            -- Set up keybinds for navigating snippets
            vim.keymap.set({ "i", "s" }, "<Tab>", function()
                local ls = require("luasnip")
                if ls.jumpable(1) then
                    ls.jump(1)
                end
            end, { silent = true })

            vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
                local ls = require("luasnip")
                if ls.jumpable(-1) then
                    ls.jump(-1)
                end
            end, { silent = true })
        end,
    }
}


