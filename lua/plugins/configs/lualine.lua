local lualine = require("lualine")

lualine.setup({
	options = {
		theme = "catppuccin",
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename", "diagnostics" },
		lualine_c = {},
		lualine_x = {
			{ "encoding" },
			{ "fileformat" },
			{ "filetype" },
		},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {
		lualine_a = { "tabs" },
		lualine_b = { "branch" },
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "windows" },
	},
})
