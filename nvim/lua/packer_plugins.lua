require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("Mofiqul/dracula.nvim")
	use("roxma/nvim-yarp")
	use("roxma/vim-hug-neovim-rpc")
	use("ycm-core/YouCompleteMe")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use("romgrk/barbar.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("neovim/nvim-lspconfig")
	use({ "akinsho/toggleterm.nvim", tag = "*" })
	use("lewis6991/impatient.nvim")
	use("nvim-treesitter/nvim-treesitter")
end)
