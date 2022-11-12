local servers = { "clangd", "sumneko_lua" }
for _, server in ipairs(servers) do
    require("lspconfig")[server].setup({})
end

require("lspconfig").sumneko_lua.setup {
    -- ... other configs
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "use" }
            },
            format = { enable = true }
        },
    }
}

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format()
    end,
})
