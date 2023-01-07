local packer_bootstrap = false
local packer_install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(packer_install_path)) > 0 then
	vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", packer_install_path })
	vim.cmd([[packadd packer.nvim]])

	packer_bootstrap = true
end

local formatter = require("user.packages.formatter")
local lsp = require("user.packages.lsp")
local theme = require("user.packages.theme")
local tree = require("user.packages.tree")
local treesitter = require("user.packages.treesitter")

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

	-- Editorconfig
	use("tpope/vim-sleuth")

	-- Formatter
	use(formatter)

	-- LSP
	use(lsp)

	-- Git diff
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = "nvim-lua/plenary.nvim",
	})

	-- Theme
	use(theme)

	-- Tree
	use(tree)

	-- Treesitter
	use(treesitter)

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
