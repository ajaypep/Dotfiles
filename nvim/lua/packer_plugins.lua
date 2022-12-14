require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("lewis6991/impatient.nvim")
    use("dracula/vim")
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/nvim-cmp")
    use("numToStr/Comment.nvim")
    use("kyazdani42/nvim-web-devicons")
    use("nvim-lualine/lualine.nvim")
    use("romgrk/barbar.nvim")
    use("nvim-lua/plenary.nvim")
    use("nvim-tree/nvim-tree.lua")
    use({ "akinsho/toggleterm.nvim", tag = "*" })
    use("glepnir/lspsaga.nvim")
    use("p00f/clangd_extensions.nvim")
end)
