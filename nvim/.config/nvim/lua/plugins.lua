-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-vsnip'
  use 'onsails/lspkind.nvim'

  -- [[ Themes ]]
  use 'sainnhe/everforest'

  -- [[ Status bar ]]
  use 'j-hui/fidget.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- [[ Git ]]
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use 'APZelos/blamer.nvim'
  use 'whiteinge/diffconflicts'

  -- [[ Directories ]]
  use 'kyazdani42/nvim-web-devicons'
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      }
  }
  use 'christoomey/vim-tmux-navigator'

  -- [[ Editor ]]
  use 'raimondi/delimitmate'
  use 'tpope/vim-commentary'
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use 'p00f/nvim-ts-rainbow'
  use 'karb94/neoscroll.nvim'
  use 'tpope/vim-sleuth'
  -- [[ Fuzzy finder ]]
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use 'ThePrimeagen/harpoon'
  -- [[ Debug ]]
  use 'mfussenegger/nvim-dap'
  use 'leoluz/nvim-dap-go'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'theHamsta/nvim-dap-virtual-text'

end)
