require("lazy").setup({
	-- Autopairs
	{
		"windwp/nvim-autopairs",
		opts = {},
	},

	-- Commentary
	{ "tpope/vim-commentary" },

	-- Conform
	-- require("plugins/conform"),

	-- Copilot
	{ "github/copilot.vim" },

	-- Diff view
	{ "sindrets/diffview.nvim" },

	-- Editorconfig
	{ "tpope/vim-sleuth" },

	-- Formatter
	-- require("plugins/formatter"),

	-- LSP
	require("plugins/lsp"),

	-- Lualine
	require("plugins/lualine"),

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- ToggleTerm
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {},
	},

	-- Theme
	{
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},

	-- Tree
	require("plugins/nvim-tree"),

	-- Treesitter
	require("plugins/treesitter"),

	-- Surround
	{ "tpope/vim-surround" }
})

-----------------------------------------------------------
-- Graveyard
-----------------------------------------------------------
