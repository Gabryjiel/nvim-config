return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
	},
	{
		"comfysage/evergarden",
		priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
		opts = {
			transparent_background = true,
			variant = "medium", -- 'hard'|'medium'|'soft'
			overrides = {}, -- add custom overrides
		},
	},
	{
		"ficcdaf/ashen.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		priority = 1000,
		-- config = function()
		-- 	require("poimandres").setup({
		-- 		-- leave this setup function empty for default config
		-- 		-- or refer to the configuration section
		-- 		-- for configuration options
		-- 	})
		-- end,
		--
		-- -- optionally set the colorscheme within lazy config
		-- init = function()
		-- 	vim.cmd("colorscheme poimandres")
		-- end,
	},
	{
		"ilof2/posterpole.nvim",
		priority = 1000,
		lazy = false,
		opts = {},
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "EdenEast/nightfox.nvim", priority = 1000, opts = {} },
	{ "Mofiqul/vscode.nvim", priority = 1000, opts = {} },
	{ "shaunsingh/nord.nvim", priority = 1000 },
	{ "AlexvZyl/nordic.nvim", priority = 1000, opts = {} },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
	},
	{ "tiagovla/tokyodark.nvim", priority = 1000, opts = {} },
	{ "sainnhe/everforest", priority = 1000 },
	{ "marko-cerovac/material.nvim", priority = 1000 },
	{ "scottmckendry/cyberdream.nvim", lazy = false, priority = 1000 },
	{ "navarasu/onedark.nvim", priority = 1000 },
	{ "tiagovla/tokyodark.nvim", priority = 1000, opts = {} },
}
