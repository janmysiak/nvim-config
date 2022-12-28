local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

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
	use(require("user.packages.formatter"))

	-- Impatient
	use("lewis6991/impatient.nvim")

	-- LSP
	use(require("user.packages.lsp"))

	-- Git diff
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Theme
	use(require("user.packages.theme"))

	-- Treesitter
	use(require("user.packages.treesitter"))

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
