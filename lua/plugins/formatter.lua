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

		require("formatter").setup({
			logging = false,
			filetype = {
				svelte = {
					require("formatter.filetypes.typescriptreact").prettierd,
				},
				typescriptreact = {
					require("formatter.filetypes.typescriptreact").prettierd,
				},
				typescript = {
					require("formatter.filetypes.typescriptreact").prettierd,
				},
				javascript = {
					require("formatter.filetypes.javascript").prettierd,
				},
				javascriptreact = {
					require("formatter.filetypes.javascript").prettierd,
				},
				css = {
					require("formatter.filetypes.javascript").prettierd,
				},
				json = {
					require("formatter.filetypes.javascript").prettierd,
				},
				python = {
					require("formatter.filetypes.python").black,

					function()
						return {
							exe = "black",
							args = {
								"-l 100",
							},
						}
					end,
				},
				go = {
					require("formatter.filetypes.go").gofumpt,
				},
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
			},
		})
	end,
}

return M
