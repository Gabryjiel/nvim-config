return {
	"rmagatti/auto-session",
	lazy = false,

	--- @module 'auto-session'
	--- @type AutoSession.Config
	opts = {
		suppressed_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
	},
	keys = {
		{ "<leader>wd", "<cmd>SessionRestore<cr>", desc = "Restore session for cwd" },
		{ "<leader>ws", "<cmd>SessionSave<cr>", desc = "Save session for cwd" },
	},
}
