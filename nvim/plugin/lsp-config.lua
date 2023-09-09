require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls" },
}

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup(require("lsp_configs.lua_setup"))
lspconfig.html.setup(require("lsp_configs.html_setup"))
lspconfig.eslint.setup(require("lsp_configs.eslint_setup"))

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format()
    end,
})
