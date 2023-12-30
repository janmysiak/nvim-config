local M = {
	"mhartington/formatter.nvim",
	config = function()
		local augroup = vim.api.nvim_create_augroup
		local autocmd = vim.api.nvim_create_autocmd

		augroup("__formatter__", { clear = true })
		autocmd("BufWritePost", {
			group = "__formatter__",
			command = ":FormatWrite",
		})

		require('formatter').setup({
			logging = false,
			filetype = {
				svelte = {
					require("formatter.filetypes.typescriptreact").prettier,
				},
				typescriptreact = {
					require("formatter.filetypes.typescriptreact").prettier,
				},
				typescript = {
					require("formatter.filetypes.typescriptreact").prettier,
				},
				javascript = {
					require("formatter.filetypes.javascript").prettier,
				},
				javascriptreact = {
					require("formatter.filetypes.javascript").prettier,
				},
				css = {
					require("formatter.filetypes.javascript").prettier,
				},
				json = {
					require("formatter.filetypes.javascript").prettier,
				},
			}
		})
	end
}

return M
