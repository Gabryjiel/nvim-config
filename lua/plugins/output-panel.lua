return {
	"mhanberg/output-panel.nvim",
	version = "*",
	event = "VeryLazy",
	config = function()
		require("output_panel").setup({
			max_buffer_size = 5000,
		})
	end,
	cmd = { "OutputPanel" },
	keys = {
		{
			"<leader>sl",
			vim.cmd.OutputPanel,
			mode = "n",
			desc = "[S]earch [L]sp",
		},
	},
}
