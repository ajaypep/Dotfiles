local overrides = require("custom.plugins.overrides")

return {

	["williamboman/mason.nvim"] = {
		override_options = overrides.mason,
	},
	["nvim-treesitter/nvim-treesitter"] = {
		override_options = overrides.treesitter,
	},
	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	["kyazdani42/nvim-tree.lua"] = {
		override_options = overrides.nvimtree,
	},
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},
}
