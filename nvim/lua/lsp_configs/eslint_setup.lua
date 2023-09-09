local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local eslint_setup = {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = true
        if client.server_capabilities.documentFormattingProvider then
            local au_lsp = vim.api.nvim_create_augroup("eslint-lsp", { clear = true })
            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = "*",
                callback = function()
                    vim.lsp.buf.format({ async = true })
                end,
                group = au_lsp,
            })
        end
    end,
}

return eslint_setup
