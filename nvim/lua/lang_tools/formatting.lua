local formatters_by_ft = {
	lua = { "stylua" },
	typst = { "typstfmt" },
	typ = { "typstfmt" },
	javascript = { "prettierd" },
}

local function get_required_formatters()
	local formatters = {}
	for _, v in pairs(formatters_by_ft) do
		for _, formatter in ipairs(v) do
			table.insert(formatters, formatter)
		end
	end
	return formatters
end

return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		format_on_save = {
			timeout_ms = 5000,
			lsp_fallback = true,
		},
		formatters_by_ft = formatters_by_ft,
	},
	formatters = get_required_formatters(),
}
