local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.cmd("let g:ycm_clangd_args = ['--clang-tidy']")
--format before saving
vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.c","*.cpp","*.cxx","*.h","*.hpp"},
  command = "YcmCompleter Format",
})
