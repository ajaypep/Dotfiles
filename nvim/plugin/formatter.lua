-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
local formatter = require("formatter")

formatter.setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		lua = require("formatter_configs.lua_setup"),

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
		html = require("formatter_configs.html_setup"),
	},
})

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.lua", "*.html" },
	command = "FormatWrite",
})
