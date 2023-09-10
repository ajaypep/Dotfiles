local util = require("formatter.util")

local html_setup = {
	function()
		return {
			exe = "prettierd",
			args = {
				util.escape_path(util.get_current_buffer_file_path()),
			},
			stdin = true,
		}
	end,
}

return html_setup
