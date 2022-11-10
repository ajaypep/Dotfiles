local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.cmd("let g:ycm_clangd_args = ['--clang-tidy']")
--format before saving
vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.c","*.cpp","*.cxx","*.h","*.hpp"},
  command = "YcmCompleter Format",
})

--Let clangd fully control code completion
vim.cmd("let g:ycm_clangd_uses_ycmd_caching = 0")
--Use installed clangd, not YCM-bundled clangd which doesn't get updates.
vim.cmd("let g:ycm_clangd_binary_path = exepath('clangd')")
vim.cmd("let g:ycm_add_preview_to_completeopt = 0")
vim.cmd("set completeopt-=preview")
