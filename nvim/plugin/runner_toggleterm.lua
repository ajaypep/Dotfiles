local toggleterm = require("toggleterm")
local Terminal = require('toggleterm.terminal').Terminal

local run_cmd = "g++ " .. vim.api.nvim_buf_get_name(0) .. " && ./a.out"


toggleterm.setup {}
