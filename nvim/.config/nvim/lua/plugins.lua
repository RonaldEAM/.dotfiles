local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'yioneko/nvim-vtsls'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-vsnip'
  use 'onsails/lspkind.nvim'
  use 'simrat39/symbols-outline.nvim'

  -- [[ Themes ]]
  -- use 'sainnhe/everforest'
  use 'gruvbox-community/gruvbox'

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
  use "almo7aya/openingh.nvim"

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
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }
  use 'p00f/nvim-ts-rainbow'
  use 'karb94/neoscroll.nvim'
  use 'tpope/vim-sleuth'
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- [[ Fuzzy finder ]]
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' },
    }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use 'ThePrimeagen/harpoon'
  use 'nvim-telescope/telescope-ui-select.nvim'

  -- [[ Debug ]]
  use 'mfussenegger/nvim-dap'
  use 'leoluz/nvim-dap-go'
  use {
    'mxsdev/nvim-dap-vscode-js',
    requires = { 'mfussenegger/nvim-dap' }
  }
  use {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile",
    tag = 'v1.74.1'
  }
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'theHamsta/nvim-dap-virtual-text'

  -- [[ Apps ]]
  use {
    "NTBBloodbath/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }
  use 'Exafunction/codeium.vim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
