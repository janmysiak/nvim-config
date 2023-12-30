local M = {
	'stevearc/conform.nvim',
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				-- python = { "black" },
			},
			format_on_save = {
				timeout_ms = 500,
				-- async = true,
				lsp_fallback = true,
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end
}

return M
