return {
  {
    "kyazdani42/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      view = {
        centralize_selection = true,
        relativenumber = true,
        width = 50,
      },
      update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {},
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        git_ignored = false,
        dotfiles = false
      },
      actions = {
        open_file = {
          quit_on_open = true
        }
      }
    },
    init = function()
      map('n', '<leader>nt', ':NvimTreeToggle<CR>')
      map('n', '<leader>r', ':NvimTreeRefresh<CR>')
    end
  }
}
