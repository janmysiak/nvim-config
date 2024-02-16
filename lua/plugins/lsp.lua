local M = {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lsp_zero = require("lsp-zero")

		-- Setup LSP zero
		-- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/tutorial.md

		lsp_zero.on_attach(function(_, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		-- Mason

		local default_lsps = {
			"cssls",
			"eslint",
			"gopls",
			"jsonls",
			"lua_ls",
			"pyright",
			"tailwindcss",
			"tsserver",
			"svelte",
		}

		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = default_lsps,
			handlers = {
				lsp_zero.default_setup,
			},
		})

		lsp_zero.setup_servers(default_lsps)

		-- Completions

		local cmp = require("cmp")

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),
		})
	end,
}

return M
