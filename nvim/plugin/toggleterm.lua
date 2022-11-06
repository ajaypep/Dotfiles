local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-t>", ":ToggleTerm direction=float<CR>", opts)

require("toggleterm").setup()
