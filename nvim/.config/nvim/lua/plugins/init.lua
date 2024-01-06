return {
  {
    "hrsh7th/cmp-buffer",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
  },
  {
    "hrsh7th/cmp-path",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
  },
  {
    "hrsh7th/cmp-vsnip",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
  },

  -- [[ Status bar ]]
  {
    "j-hui/fidget.nvim",
    tag = "v1.1.0",
    config = function()
      require("fidget").setup()
    end
  },

  -- [[ Git ]]
  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gs", ":G<CR>" },
      { "<leader>gl", ":0Gclog<CR>" },
      { "<leader>ge", ":Gedit<CR>" },
    }
  },
  
  "whiteinge/diffconflicts",
  {
    "almo7aya/openingh.nvim",
    keys = {
      { "<leader>ghr", ":OpenInGHRepo<CR>" },
      { "<leader>ghf", ":OpenInGHFile<CR>" },
    }
  },

  -- [[ Directories ]]
  "nvim-tree/nvim-web-devicons",
  "christoomey/vim-tmux-navigator",

  -- [[ Editor ]]
  {
    "raimondi/delimitmate",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
  },
  {
    "tpope/vim-commentary",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
  },
  {
    "karb94/neoscroll.nvim",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    config = function()
      require("neoscroll").setup()
    end
  },
  "tpope/vim-sleuth",
}
