local lsp_ok, lsp = pcall(require, "lsp-zero")

if not lsp_ok then
	return
end

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"sumneko_lua",
	"rust_analyzer",
	"marksman",
	-- "gopls",
})

lsp.configure("sumneko_lua", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = false,
	underline = true,
})
