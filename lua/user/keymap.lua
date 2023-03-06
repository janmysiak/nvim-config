vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Buffers
-- vim.keymap.set("n", "<leader>bc", ":bp | sp | bn | bd<CR>")
vim.keymap.set("n", "<leader>bc", ":bd<CR>")
vim.keymap.set("n", "<leader>bn", vim.cmd.bp)
vim.keymap.set("n", "<leader>bp", vim.cmd.bn)
-- vim.keymap.set("n", "<leader>bC", ":bufdo bd<CR>")
vim.keymap.set("n", "<leader>bo", ":%bd|e#<CR>", {})

-- Move lines
vim.keymap.set("n", "<A-up>", ":m-2<CR>")
vim.keymap.set("n", "<A-down>", ":m+1<CR>")
vim.keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<leader>k", ":m-2<CR>")
vim.keymap.set("n", "<leader>j", ":m+1<CR>")
vim.keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv")

-- Scroll and center cursor
vim.keymap.set({ "n", "v" }, "<S-up>", "<C-u>zz")
vim.keymap.set({ "n", "v" }, "<S-down>", "<C-d>zz")
vim.keymap.set({ "n", "v" }, "<C-k>", "<C-u>zz")
vim.keymap.set({ "n", "v" }, "<C-j>", "<C-d>zz")

-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>")

-- Tabs
vim.keymap.set("n", "<leader>tt", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>")
vim.keymap.set("n", "<leader>tn", ":tabprev<CR>")
vim.keymap.set("n", "<leader>tp", ":tabnext<CR>")
vim.keymap.set("n", "<leader>tT", ":tab term<CR>")

-- Terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Toggle diff view
vim.keymap.set({ "n", "v" }, "<leader>g", ":DiffviewOpen<CR>")
vim.keymap.set({ "n", "v" }, "<leader>G", ":DiffviewClose<CR>")

-- Commentary
vim.keymap.set({ "n", "v" }, "<leader>c", ":Commentary<CR>")

-- LSP
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>ls", vim.lsp.buf.code_action)
vim.keymap.set({ "n", "v" }, "<leader>lr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>lj", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>lh", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>ll", vim.diagnostic.goto_next)

-- Telescope
local telescope_ok, telescope = pcall(require, "telescope.builtin")

if telescope_ok then
	vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
	vim.keymap.set("n", "<leader>fF", telescope.live_grep, {})
	vim.keymap.set("n", "<leader>fs", telescope.live_grep, {})
	vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
	vim.keymap.set("n", "<leader>bb", telescope.buffers, {})
end

-- Tree
local tree_ok, tree = pcall(require, "nvim-tree.api")

if tree_ok then
	vim.keymap.set("n", "<leader>e", function()
		tree.tree.toggle({ focus = true, find_file = true })
	end)
end
