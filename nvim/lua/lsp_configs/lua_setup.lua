local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lua_setup = {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "use" }
            },
            format = { enable = true }
        },
    }
}

return lua_setup
