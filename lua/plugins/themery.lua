return {
	"zaldih/themery.nvim",
	command = "Themery",
	config = function()
		local available_colorschemes = vim.fn.getcompletion("", "color")
		local colorschemes = {}

		for _, colorscheme in ipairs(available_colorschemes) do
			table.insert(colorschemes, colorscheme)
		end

		table.sort(colorschemes, function(a, b)
			return a < b
		end)

		require("themery").setup({
			themes = colorschemes,
		})
	end,
	lazy = false,
	priority = 900,
}
