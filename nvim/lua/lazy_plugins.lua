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
    "kyazdani42/nvim-web-devicons",
    "nvim-lualine/lualine.nvim",
    "romgrk/barbar.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-tree.lua",
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate" -- :MasonUpdate updates registry contents
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
}

require("lazy").setup(plugins)
