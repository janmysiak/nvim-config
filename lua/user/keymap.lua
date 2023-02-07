vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Buffers
vim.keymap.set("n", "<leader>x", vim.cmd.bd)
vim.keymap.set("n", "<leader><tab>", vim.cmd.bn)
vim.keymap.set("n", "<leader><S-tab>", vim.cmd.bp)

-- Move lines
vim.keymap.set("n", "<A-up>", ":m-2<CR>")
vim.keymap.set("n", "<A-down>", ":m+1<CR>")
vim.keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<A-k>", ":m-2<CR>")
vim.keymap.set("n", "<A-j>", ":m+1<CR>")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")

-- Scroll and center cursor
vim.keymap.set({ "n", "v" }, "<S-up>", "<C-u>zz")
vim.keymap.set({ "n", "v" }, "<S-down>", "<C-d>zz")

-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>")

-- Toggle diff view
vim.keymap.set({ "n", "v" }, "<leader>g", ":DiffviewOpen<CR>")
vim.keymap.set({ "n", "v" }, "<leader>G", ":DiffviewClose<CR>")

-- Commentary
vim.keymap.set({ "n", "v" }, "<leader>c", ":Commentary<CR>")

-- LSP
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>ls", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>lj", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>lh", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>ll", vim.diagnostic.goto_next)

-- Telescope
local telescope_ok, telescope = pcall(require, "telescope.builtin")

if telescope_ok then
	vim.keymap.set("n", "<leader>f", telescope.find_files, {})
	vim.keymap.set("n", "<leader>F", telescope.live_grep, {})
	vim.keymap.set("n", "<leader>b", telescope.buffers, {})
end

-- Tree
local tree_ok, tree = pcall(require, "nvim-tree.api")

if tree_ok then
	vim.keymap.set("n", "<leader>e", function()
		tree.tree.toggle({ focus = true, find_file = true })
	end)
end
