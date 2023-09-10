local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local emmet_setup = {
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug",
        "typescriptreact", "vue" },
    init_options = {
        html = {
            options = {
                ["bem.enabled"] = true,
                ["output.format"] = true,
            },
        },
    }
}

return emmet_setup
