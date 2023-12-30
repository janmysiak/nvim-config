local M = {
  "nvim-tree/nvim-tree.lua",
  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  opts = {
    actions = {
      open_file = {
        quit_on_open = true,
        window_picker = {
          enable = false,
        },
      },
    },
    filters = {
      dotfiles = true,
    },
    trash = {
      cmd = "rm -rf",
    },
    update_focused_file = {
      enable = true,
      update_root = true,

    },
    view = {
      adaptive_size = true,
    },
  }
}

return M
