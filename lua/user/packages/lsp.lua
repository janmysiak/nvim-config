local function config()
	local lsp = require("lsp-zero")
	lsp.preset("recommended")

	lsp.ensure_installed({
		"tsserver",
		"eslint",
		"sumneko_lua",
		"rust_analyzer",
		"gopls",
	})

	lsp.configure("sumneko_lua", {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
			},
		},
	})

	lsp.setup()

	vim.diagnostic.config({
		virtual_text = true,
		signs = false,
		underline = true,
	})
end

return {
	"VonHeikemen/lsp-zero.nvim",

	requires = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" },
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-nvim-lua" },

		-- Snippets
		{ "L3MON4D3/LuaSnip" },
		{ "rafamadriz/friendly-snippets" },
	},

	config = config,
}
