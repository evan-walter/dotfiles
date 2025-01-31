-- local HOME = os.getenv("HOME")
return {
	"mfussenegger/nvim-lint",
	opts = {
		linters = {
			-- 	stylua = {
			-- 		args = { "--config", HOME .. "/.config/stylua/stylua.toml", "--" },
			-- 	},
			-- ["markdownlint-cli"] = {
			-- 	args = { "--config", HOME .. "/.markdownlint.json", "--" },
			-- },
		},
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			svelte = { "eslint_d" },
			markdown = { "markdownlint-cli2" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<space>li", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
