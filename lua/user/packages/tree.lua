local function config()
	require("nvim-tree").setup({
		view = {
			adaptive_size = true,
		},
	})

	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1
end

return {
	"nvim-tree/nvim-tree.lua",
	config = config,
}
