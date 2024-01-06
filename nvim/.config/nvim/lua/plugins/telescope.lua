return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-live-grep-args.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make"
      },
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      local telescope = require('telescope')
      local lga_actions = require('telescope-live-grep-args.actions')

      telescope.setup{
        defaults = {
          layout_strategy = 'vertical',
          layout_config = { height = 0.95 },
        },
        extensions = {
          live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            -- define mappings, e.g.
            mappings = { -- extend mappings
              i = {
                ["<C-k>"] = lga_actions.quote_prompt(),
                ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
              },
            },
          }
        }
      }

      telescope.load_extension('fzf')
      telescope.load_extension('ui-select')
    end,
    init = function()
      map('n', '<leader>ff',  function() return require("telescope.builtin").find_files() end)
      map('n', '<leader>fg',  function() return require("telescope").extensions.live_grep_args.live_grep_args() end)
      map('n', '<leader>fb',  function() return require("telescope.builtin").buffers() end)
      map('n', '<leader>fh',  function() return require("telescope.builtin").help_tags() end)
      map('n', '<leader>tgs', function() return require("telescope.builtin").git_status() end)
      map('n', '<leader>ch', function() return require("telescope.builtin").command_history() end)
      map('n', 'gr', ':Telescope lsp_references<CR>')
      map('n', 'gd', ':Telescope lsp_definitions<CR>')
      map('n', '<leader>gh', ':Telescope git_commits<CR>')
      map('n', '<leader>fr', function() return require('telescope.builtin').resume() end)
    end
  }
}
