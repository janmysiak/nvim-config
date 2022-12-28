local function run()
	local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
	ts_update()
end

local function config()
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"bash",
			"css",
			"html",
			"javascript",
			"json",
			"lua",
			"rust",
			"tsx",
			"typescript",
			"go",
			"vim",
		},

		-- Install parsers synchronously (only applied to `ensure_installed`)
		sync_install = false,

		-- Automatically install missing parsers when entering buffer
		-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
		auto_install = true,

		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		autopairs = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		context_commentstring = {
			enable = true,
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	run = run,
	config = config,
}
