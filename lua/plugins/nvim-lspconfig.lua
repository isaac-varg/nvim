-- this allows neovim to talk to and receive information from lsps
--
-- use :h vim.lsp.buf to map shortcuts

return {
        "neovim/nvim-lspconfig",
        config = function()
                local lspconfig = require("lspconfig")

                -- this is for the the cmp-nvim-lsp.lua
                -- allows us to attach cmp capabailities to every lsp that gets attached to a buffer
                local capabilities = require('cmp_nvim_lsp').default_capabilities()

                -- lua
                lspconfig.lua_ls.setup({
                        capabilities = capabilities
                })
                -- typescript
                lspconfig.ts_ls.setup({
                        capabilities = capabilities
                })
                -- tailwindcss
                lspconfig.tailwindcss.setup({
                        capabilities = capabilities
                })


                vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end
}
