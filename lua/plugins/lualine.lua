local time = function()
  return os.date("%H:%M", os.time())
end

local M = {
  "nvim-lualine/lualine.nvim",
  -- dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
  opts = {
    sections = {
      lualine_a = { "buffers" },
      lualine_b = { 'branch', 'diagnostics' },
      lualine_c = {},
      lualine_x = { time },
    },
  }
}

return M
