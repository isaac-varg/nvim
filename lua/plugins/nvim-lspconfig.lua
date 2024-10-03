-- this allows neovim to talk to and receive information from lsps
--
-- use :h vim.lsp.buf to map shortcuts

return {
        "neovim/nvim-lspconfig",
        config = function()
                local lspconfig = require("lspconfig")
                lspconfig.lua_ls.setup({})
        end
}
