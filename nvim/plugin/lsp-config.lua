local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = false

local lspconfig = require('lspconfig')
local servers = { "clangd", "lua_ls", "eslint" }

for _, server in ipairs(servers) do
    lspconfig[server].setup({
        capabilities = capabilities,
    })
end

lspconfig.lua_ls.setup(require("lsp_configs.lua_setup"))

lspconfig.eslint.setup(require("lsp_configs.eslint_setup"))

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format()
    end,
})
