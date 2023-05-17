local servers = { "clangd", "lua_ls" }
for _, server in ipairs(servers) do
    require("lspconfig")[server].setup({})
end

require("lspconfig").lua_ls.setup {
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
