require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = { 'typescript', 'javascript', 'html', 'css', 'lua', 'tsx', 'go', 'http', 'json', 'todotxt' },

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
