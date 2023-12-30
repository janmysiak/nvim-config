local M = {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-nvim-lsp',
    'stevearc/conform.nvim',
  },
  config = function()
    local lsp_zero = require('lsp-zero')

    -- Setup LSP zero
    -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/tutorial.md

    lsp_zero.on_attach(function(_, bufnr)
      lsp_zero.default_keymaps({ buffer = bufnr })
    end)

    -- Mason

    local default_lsps = {
      "cssls",
      "eslint",
      "lua_ls",
      "pyright",
      'svelte',
      "tailwindcss",
      "tsserver",
    }

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = default_lsps,
      handlers = {
        lsp_zero.default_setup,
      },
    })

    lsp_zero.setup_servers(default_lsps)

    -- Conform

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

    -- Completions

    local cmp = require('cmp')

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
      })
    })
  end
}

return M