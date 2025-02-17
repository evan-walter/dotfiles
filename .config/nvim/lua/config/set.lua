-- Set
--

-- EditorConfig
--
-- vim.g.editorconfig = true

-- Line Numbers
--
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Tabs
--
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- Text Width (Print Width)
--
vim.opt.textwidth = 2000

-- Cases
--
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Yank Highlighting
-- Try it with `yap` in normal mode
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Search Highlighting
--
require("config.set-search-highlighting")

-- Terminal GUI Colors
--
vim.opt.termguicolors = true

-- Clipboard
--
vim.opt.clipboard = "unnamedplus"

-- Spell
--
vim.opt.spell = true
vim.opt.spelllang = "en_us"

-- Sessions
--
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions,globals" -- from `:checkhealth` warning and auto-session docs
