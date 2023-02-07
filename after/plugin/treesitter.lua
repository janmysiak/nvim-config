local treesitter_ok, treesitter = pcall(require, "nvim-treesitter.configs")

if not treesitter_ok then
	return
end

treesitter.setup({
	ensure_installed = {
		"bash",
		"css",
		"html",
		"javascript",
		"json",
		"lua",
		"org",
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
		additional_vim_regex_highlighting = { "org" },
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
