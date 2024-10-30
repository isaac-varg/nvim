-- this allows lspconfig to use the language servers installed by mason
-- also translates the name of the language server to match the one used by lspconfig

return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
            ensure_installed = {
                    "lua_ls",
                    "ts_ls",
                    "tailwindcss",
                    "prismals"
        }
    }
}
