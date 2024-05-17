local linters_by_ft = {
	javascript = { "eslint" },
}
local function get_required_linters()
	local linters = {}
	for _, v in pairs(linters_by_ft) do
		for _, linter in ipairs(v) do
			table.insert(linters, linter)
		end
	end
	return linters
end

return {
	"mfussenegger/nvim-lint",
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = linters_by_ft
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave", "TextChanged" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
	linters = get_required_linters(),
}
