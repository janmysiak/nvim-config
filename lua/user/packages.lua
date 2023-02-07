local packer_bootstrap = false
local packer_install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(packer_install_path)) > 0 then
	vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", packer_install_path })
	vim.cmd([[packadd packer.nvim]])

	packer_bootstrap = true
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost packer.lua source <afile> | PackerSync
	augroup end
]])

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Auto pairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	-- Commentary
	use("tpope/vim-commentary")

	-- Conjure
	-- use("Olical/conjure")

	-- Editorconfig
	use("tpope/vim-sleuth")

	-- Formatter
	use("mhartington/formatter.nvim")

	-- LSP
	use({
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
	})

	-- Git diff
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- Orgmode
	use({
		"nvim-orgmode/orgmode",
		config = function()
			require("orgmode").setup({})
		end,
	})

	-- Delete/change/add parentheses/quotes/XML-tags/much more with ease
	use("tpope/vim-surround")

	-- Racket
	-- use("wlangstroth/vim-racket")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = "nvim-lua/plenary.nvim",
	})

	-- Theme
	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})

	-- Tree
	use("nvim-tree/nvim-tree.lua")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
