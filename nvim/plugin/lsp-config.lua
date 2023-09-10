require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" },
})

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup(require("lsp_configs.lua_setup"))
lspconfig.html.setup(require("lsp_configs.html_setup"))
lspconfig.eslint.setup(require("lsp_configs.eslint_setup"))
lspconfig.emmet_ls.setup(require("lsp_configs.emmet_setup"))

