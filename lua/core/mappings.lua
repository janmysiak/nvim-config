vim.g.mapleader = " "
vim.g.maplocalleader = " "

local MAPPINGS = {
	-- Greatest remap ever ???
	-- { { "x" }, "<leader>p", [["_dP]] },
	-- { { "n", "v" }, "<leader>y", [["+y]] },
	-- { { "n" }, "<leader>Y", [["+Y]] },

	-- Buffers
	{ { "n" }, "<leader>bc", ":bd!<CR>" },
	{ { "n" }, "<leader>bn", vim.cmd.bp },
	{ { "n" }, "<leader>bp", vim.cmd.bn },
	{ { "n" }, "<leader>bo", ":%bd!|e#<CR>" },
	{ { "n" }, "°", vim.cmd.bp },
	{ { "n" }, "§", vim.cmd.bn },

	-- Commentary
	{ { "n", "v" }, "<leader>c", ":Commentary<cr>" },

	-- Move lines
	{ { "n" }, "<A-up>", ":m-2<CR>" },
	{ { "n" }, "<A-down>", ":m+1<CR>" },
	{ { "v" }, "<A-up>", ":m '<-2<CR>gv=gv" },
	{ { "v" }, "<A-down>", ":m '>+1<CR>gv=gv" },
	{ { "n" }, "<leader>k", ":m-2<CR>" },
	{ { "n" }, "<leader>j", ":m+1<CR>" },
	{ { "v" }, "<leader>k", ":m '<-2<CR>gv=gv" },
	{ { "v" }, "<leader>j", ":m '>+1<CR>gv=gv" },

	-- Scroll and center cursor
	{ { "n", "v" }, "<S-up>", "<C-u>zz" },
	{ { "n", "v" }, "<S-down>", "<C-d>zz" },
	{ { "n", "v" }, "<C-k>", "<C-u>zz" },
	{ { "n", "v" }, "<C-j>", "<C-d>zz" },

	-- Telescope
	{ { "n", "v" }, "<leader>ff", "<cmd>Telescope find_files<cr>" },
	{ { "n", "v" }, "<leader>fs", "<cmd>Telescope live_grep<cr>" },
	{ { "n", "v" }, "<leader>bb", "<cmd>Telescope buffers<cr>" },
	-- ['<c-d>'] = require('telescope.actions').delete_buffer

	-- Tree
	{ { "n", "v" }, "<leader>e", "<cmd>NvimTreeToggle<cr>" },

	-- Windows
	{ { "n" }, "<leader>w", "<C-w>" },

	-- Tabs
	-- { { "n" },      "<leader>tt", ":tabnew<CR>" },
	-- { { "n" },      "<leader>tc", ":tabclose<CR>" },
	-- { { "n" },      "<leader>tp", ":tabprev<CR>" },
	-- { { "n" },      "<leader>tn", ":tabnext<CR>" },
	-- { { "n" },      "<leader>°",  ":tabprev<CR>" },
	-- { { "n" },      "<leader>§",  ":tabnext<CR>" },
	-- { { "n" },      "<leader>to", ":tabonly<CR>" },

	-- Terminal
	{ { "t" }, "<Esc>", "<C-\\><C-n>" },

	-- ToggleTerm
	{ { "n" }, "<leader>tt", ':ToggleTerm direction="float"<CR>' },
	{ { "n" }, "<leader>tv", ':ToggleTerm direction="vertical" size=80<CR>' },
	{ { "n" }, "<leader>ts", ':ToggleTerm direction="horizontal"<CR>' },

	-- Diff view
	{ { "n", "v" }, "<leader>gg", ":DiffviewOpen<CR>" },
	{ { "n", "v" }, "<leader>gc", ":DiffviewClose<CR>" },

	-- LSP
	{ { "n" }, "<leader>ld", vim.lsp.buf.definition },
	{ { "n" }, "<leader>lk", vim.lsp.buf.hover },
	{ { "n" }, "<leader>ls", vim.lsp.buf.code_action },
	{ { "n" }, "<leader>lj", vim.diagnostic.open_float },
	{ { "n" }, "<leader>lh", vim.diagnostic.goto_prev },
	{ { "n" }, "<leader>ll", vim.diagnostic.goto_next },

	-- Session
	{ { "n" }, "<leader>.", ":source ~/nvim_sessions/" },
	{ { "n" }, "<leader>:", ":mks! ~/nvim_sessions/" },
}

for _, m in ipairs(MAPPINGS) do
	vim.keymap.set(m[1], m[2], m[3])
end
