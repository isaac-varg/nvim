-- a snippet engine
-- used a source for nvim-cmp
-- friendly snippets is required because it is a collection of snippets for luasnip (this plugin)

return {
        {
                "L3MON4D3/LuaSnip",
                -- follow latest release.
                version = "v2.3", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
                -- install jsregexp (optional!).
                build = "make install_jsregexp",
                dependencies = {
                        'saadparwaiz1/cmp_luasnip',
                        'rafamadriz/friendly-snippets'
                },
        }
}
