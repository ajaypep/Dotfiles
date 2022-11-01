local M = {}

M.ui = {
  theme = "chadracula",
}

M.mappings = require "custom.mappings"

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["lukas-reineke/indent-blankline.nvim"] = { disable = true },
    ["folke/which-key.nvim"] = { disable = false },
  },
}

return M
