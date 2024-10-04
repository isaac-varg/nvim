-- this allows neovim to talk to and receive information from lsps
--
-- use :h vim.lsp.buf to map shortcuts

return {
        "neovim/nvim-lspconfig",
        config = function()
                local lspconfig = require("lspconfig")
                lspconfig.lua_ls.setup({})

                vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

        end
}
