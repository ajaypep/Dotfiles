require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("dracula/vim")
	use("dense-analysis/ale")
	use("nvim-lualine/lualine.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("romgrk/barbar.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("nvim-lua/plenary.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use({ "akinsho/toggleterm.nvim", tag = "*" })
	use({
		"VonHeikemen/fine-cmdline.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})
end)
