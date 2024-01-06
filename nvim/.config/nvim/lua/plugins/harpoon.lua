return {
  {
    "ThePrimeagen/harpoon",
    branch = "master",
    commit = "ccae1b9",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 80,
      }
    },
    keys = {
      {'<leader>mf', function() return require("harpoon.mark").add_file() end},
      {'<leader>mt', function() return require("harpoon.ui").toggle_quick_menu() end},
      {'<leader>m1', function() return require("harpoon.ui").nav_file(1) end},
      {'<leader>m2', function() return require("harpoon.ui").nav_file(2) end},
      {'<leader>m3', function() return require("harpoon.ui").nav_file(3) end},
      {'<leader>m4', function() return require("harpoon.ui").nav_file(4) end}
    }
  }
}
