local tree_ok, tree = pcall(require, "nvim-tree")

if not tree_ok then
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

tree.setup({
	view = {
		adaptive_size = true,
	},
	actions = {
		open_file = {
			quit_on_open = true,
			window_picker = {
				enable = false,
			},
		},
	},
	filters = {
		dotfiles = true,
	},
	trash = {
		cmd = "rm -rf",
	},
})
