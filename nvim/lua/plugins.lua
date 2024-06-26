local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

local editor_features = {
	"commenting",
	"gitsigns",
	"fuzzy_finding",
	"typst_integration",
	"syntax_highlighting",
	"autocompletion",
	"color_scheme",
	"status_line",
	"diagnostics",
	"package_manager",
}

local function get_plugins_with_config()
	local plugins = {}
	for _, v in ipairs(editor_features) do
		table.insert(plugins, require(v))
	end
	for _, value in ipairs(require("lang_tools")) do
		table.insert(plugins, value)
	end
	return plugins
end

require("lazy").setup(get_plugins_with_config(), {
	ui = {
		-- If you have a Nerd Font, set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
