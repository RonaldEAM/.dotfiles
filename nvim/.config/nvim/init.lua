vim.g.mapleader = ' '

require('opts')
require('plugins')
require('lsp')
require('setup.nvim-cmp')
require('setup.vsnip')

-- [[ Plugins Settings ]]
require('setup.theme')
require('setup.lualine')
require('setup.fidget')
require('setup.gitsigns')
require('setup.nvim-web-devicons')
require('setup.nvim-tree')
require('setup.neoscroll')
require('setup.treesitter')
require('setup.telescope')
require('setup.dap')
require('setup.blamer')
require('setup.rest-nvim')
require('setup.harpoon')

require('keymaps')
