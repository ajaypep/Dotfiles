--bootstrap lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

--list plugins

local plugins = {
    "wbthomason/packer.nvim",
    "dracula/vim",
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "numToStr/Comment.nvim",
    "kyazdani42/nvim-web-devicons",
    "nvim-lualine/lualine.nvim",
    "romgrk/barbar.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-tree.lua",
    { 'akinsho/toggleterm.nvim',         version = "*",    config = true },
    "glepnir/lspsaga.nvim",
    "p00f/clangd_extensions.nvim",
}

require("lazy").setup(plugins)
