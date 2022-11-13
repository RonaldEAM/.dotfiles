require('telescope').setup{
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { height = 0.95 },
  },
  -- ...
}
require('telescope').load_extension('fzf')
