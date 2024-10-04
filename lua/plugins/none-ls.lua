-- linters and formatters are command line tools and not language servers
-- null/none ls wraps cmd line tools wraps them in a pseudo ls and
-- allows neovim to communicate with them like an ls
--
-- with this setup we still need to manually install the formatter and linters via Mason

return {
        "nvimtools/none-ls.nvim",
        dependencies = {
                "nvim-lua/plenary.nvim",
                "nvimtools/none-ls-extras.nvim",
        },
        config = function()
                local null_ls = require("null-ls")

                null_ls.setup({
                        -- formatting
                        null_ls.builtins.formatting.stylua,
                        null_ls.builtins.formatting.prettier,
                        -- linters and diagnostics
                        require("none-ls.diagnostics.eslint"),
                })

                -- set up keymaps
                vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
        end

}
