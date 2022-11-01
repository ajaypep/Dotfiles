local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "cpp",
    "c",
    "cmake",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  view = {
    side = "left",
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "clangd",
    "clang-fomrat",
  },
}
return M
