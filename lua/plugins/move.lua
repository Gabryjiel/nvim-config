return {
	"fedepujol/move.nvim",
	opts = {
		--- Config
	},
	keys = {
		{ "<A-j>", "<cmd>MoveLine(1)<cr>", desc = "Move line up", silent = true, noremap = true },
		{ "<A-k>", "<cmd>MoveLine(-1)<cr>", desc = "Move line down", silent = true, noremap = true },
		{ "<A-h>", "<cmd>MoveHChar(-1)<cr>", desc = "Move char left", silent = true, noremap = true },
		{ "<A-l>", "<cmd>MoveHChar(1)<cr>", desc = "Move char right", silent = true, noremap = true },
		{ "<A-w>", "<cmd>MoveWord(1)<cr>", desc = "Move word forward", silent = true, noremap = true },
		{ "<A-b>", "<cmd>MoveWord(-1)<cr>", desc = "Move word backwards", silent = true, noremap = true },
	},
}
