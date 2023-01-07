vim.g.mapleader = " "

vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>w", vim.cmd.w)

-- Buffers
vim.keymap.set("n", "<leader>x", vim.cmd.bd)
vim.keymap.set("n", "<leader><tab>", vim.cmd.bn)
vim.keymap.set("n", "<leader><S-tab>", vim.cmd.bp)

-- Move lines
vim.keymap.set("n", "<A-up>", ":m-2<CR>")
vim.keymap.set("n", "<A-down>", ":m+1<CR>")
vim.keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv")

-- Scroll and center cursor
vim.keymap.set({ "n", "v" }, "<S-up>", "<C-u>zz")
vim.keymap.set({ "n", "v" }, "<S-down>", "<C-d>zz")

-- Toggle diff view
vim.keymap.set({ "n", "v" }, "<leader>g", ":DiffviewOpen<CR>")
vim.keymap.set({ "n", "v" }, "<leader>G", ":DiffviewClose<CR>")

-- Commentary
vim.keymap.set({ "n", "v" }, "<leader>c", ":Commentary<CR>")

-- Telescope
local telescope_ok, telescope = pcall(require, "telescope.builtin")

if telescope_ok then
	vim.keymap.set("n", "<leader>f", telescope.find_files, {})
	vim.keymap.set("n", "<leader>F", telescope.live_grep, {})
	vim.keymap.set("n", "<leader>b", telescope.buffers, {})
end

-- Tree
local tree_ok = pcall(require, "nvim-tree")

if tree_ok then
	vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")
	vim.keymap.set("n", "<leader>E", ":NvimTreeFocus<CR>")
end
