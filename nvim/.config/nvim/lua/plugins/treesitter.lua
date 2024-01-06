return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = { "p00f/nvim-ts-rainbow" },
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup {
        -- A list of parser names, or "all"
        ensure_installed = { 'typescript', 'javascript', 'html', 'css', 'lua', 'tsx', 'go', 'http', 'json', 'todotxt', 'markdown', 'yaml', 'dockerfile', 'markdown_inline', 'cpp', 'c' },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        highlight = {
          enable = true,
        },
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        }
      }
    end
  }
}

