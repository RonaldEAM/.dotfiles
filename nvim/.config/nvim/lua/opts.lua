local opt = vim.opt

-- [[ Indention options ]]
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.shiftround = true

-- [[ Search options ]]
opt.hlsearch = true -- highlight all search matches
opt.ignorecase = true -- Ignore case when searching...
opt.smartcase = true -- ... unless there is a capital letter in the query
opt.incsearch = true -- makes search act like search in modern browsers

-- [[ Text rendering options ]]
opt.scrolloff = 10 -- minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 10 -- the minimal number of screen columns to keep to the left and to the right of the cursor
opt.wrap = false
opt.clipboard = 'unnamedplus'
opt.list = true
opt.listchars = 'tab:-->,multispace:·'

-- [[ User interface options ]]
opt.number = true
opt.relativenumber = true
opt.numberwidth = 1
opt.showcmd = true
opt.signcolumn = 'yes'
-- highlight clear SignColumn -- what was this for? vim-gitgutter? column same color?
opt.termguicolors = true -- enable true colors
opt.mouse = ''

-- [[ File options ]]
opt.swapfile = false
opt.backup = false
opt.undofile = true
