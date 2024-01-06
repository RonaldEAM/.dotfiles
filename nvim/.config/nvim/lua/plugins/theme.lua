return {
  {
    "gruvbox-community/gruvbox",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.o.background = 'dark'
      vim.g.gruvbox_contrast_dark = 'medium'
      vim.cmd([[colorscheme gruvbox]])
    end,
  }
}
