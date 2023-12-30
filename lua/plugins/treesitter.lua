local M = {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	opts = {
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

		sync_install = true,

		highlight = {
			enable = true,
			use_languagetree = true,
		},

		indent = { enable = true },
	},
	config = function(_, opts)
		-- dofile(vim.g.base46_cache .. "syntax")
		require("nvim-treesitter.configs").setup(opts)
	end,
}

return M
