local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		additional_vim_regex_highlighting = false,

		ensure_installed = {
			"bash",
			"css",
			"html",
			"javascript",
			"json",
			"lua",
			"python",
			"rust",
			"svelte",
			"tsx",
			"typescript",
		},

		indent = { enable = true },

		highlight = {
			enable = true,
			use_languagetree = true,
		},

		sync_install = true,
	},
	config = function(_, opts)
		-- dofile(vim.g.base46_cache .. "syntax")
		require("nvim-treesitter.configs").setup(opts)
	end,
}

return M
