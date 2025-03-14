return {
	"folke/todo-comments.nvim",
	-- enabled = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		highlight = {
			pattern = [[.*<(KEYWORDS)\s*]], -- pattern or table of patterns, used for highlighting (vim regex)
			comments_only = false, -- uses treesitter to match keywords in comments only
		},
		search = {
			pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
		},
	},
}
