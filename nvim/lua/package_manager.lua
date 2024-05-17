local packages = require("lang_tools.lsp").servers
local formatters = require("lang_tools.formatting").formatters
local linters = require("lang_tools.linting").linters

local function append_to_packages(t)
	for _, v in ipairs(t) do
		table.insert(packages, v)
	end
end

append_to_packages(formatters)
append_to_packages(linters)

return {
	"williamboman/mason.nvim",
	dependencies = {
		-- Automatically install LSPs and related tools to stdpath for neovim
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		{ "j-hui/fidget.nvim", opts = {} },
	},
	config = function()
		require("mason").setup()
		require("mason-tool-installer").setup({ ensure_installed = packages })
	end,
}
