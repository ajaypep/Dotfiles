local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = false

local lspconfig = require('lspconfig')
local servers = { "clangd", "lua_ls", "eslint" }

for _, server in ipairs(servers) do
    lspconfig[server].setup({
        capabilities = capabilities,
    })
end

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "use" }
            },
            format = { enable = true }
        },
    }
}

lspconfig.eslint.setup {
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

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format()
    end,
})

local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

configs.prolog_ls = {
    default_config = {
        cmd = { "swipl",
            "-g", "use_module(library(lsp_server)).",
            "-g", "lsp_server:main",
            "-t", "halt",
            "--", "stdio" },
        filetypes = { "prolog" },
        root_dir = util.root_pattern("pack.pl"),
    },
    docs = {
        description = [[
  https://github.com/jamesnvc/prolog_lsp

  Prolog Language Server
  ]],
    }
}

lspconfig.prolog_ls.setup {}
