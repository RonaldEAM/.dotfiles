function map(mode, shortcut, command)
  vim.keymap.set(mode, shortcut, command)
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

-- [[ My mappings ]]
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')
nmap('J', 'mzJ`z')

vmap('J', ":m '>+1<CR>gv=gv")
vmap('K', ":m '<-2<CR>gv=gv")
nmap('<leader>j', ':m .+1<CR>==')
nmap('<leader>k', ':m .-2<CR>==')

nmap('Y', 'y$')

-- [[ nvim-tree ]]
nmap('<leader>nt', ':NvimTreeToggle<CR>')
nmap('<leader>r', ':NvimTreeRefresh<CR>')

-- [[ fugitive ]]
nmap('<leader>gs', ':G<CR>')
nmap('<leader>gl', ':0Gclog<CR>')
nmap('<leader>ge', ':Gedit<CR>')

-- [[ harpoon ]]
nmap('<leader>mf', function() return require("harpoon.mark").add_file() end)
nmap('<leader>mt', function() return require("harpoon.ui").toggle_quick_menu() end)
nmap('<leader>m1', function() return require("harpoon.ui").nav_file(1) end)
nmap('<leader>m2', function() return require("harpoon.ui").nav_file(2) end)
nmap('<leader>m3', function() return require("harpoon.ui").nav_file(3) end)
nmap('<leader>m4', function() return require("harpoon.ui").nav_file(4) end)

-- [[ Telescope ]]
nmap('<leader>ff',  function() return require("telescope.builtin").find_files() end)
nmap('<leader>fg',  function() return require("telescope.builtin").live_grep() end)
nmap('<leader>fb',  function() return require("telescope.builtin").buffers() end)
nmap('<leader>fh',  function() return require("telescope.builtin").help_tags() end)
nmap('<leader>tgs', function() return require("telescope.builtin").git_status() end)
nmap('<leader>ch', function() return require("telescope.builtin").command_history() end)
nmap('gr', ':Telescope lsp_references<CR>')
nmap('gd', ':Telescope lsp_definitions<CR>')
nmap('<leader>gh', ':Telescope git_commits<CR>')
nmap('<leader>fid', function() return require("telescope.builtin").live_grep({search_dirs = {vim.fn.input("Directory to search: ")}}) end)

-- [[ Debugger ]]
nmap('<leader>dc',  function() return require("dap").continue() end)
nmap('<leader>db',  function() return require("dap").toggle_breakpoint() end)
nmap('<leader>dn',  function() return require("dap").step_over() end)
nmap('<leader>dp',  function() return require("dap").step_back() end)
nmap('<leader>di',  function() return require("dap").step_into() end)
nmap('<leader>do',  function() return require("dap").step_out() end)
nmap('<leader>dB',  function() return require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end)
nmap('<leader>d0',  function() return require("dap").clear_breakpoints() end)
nmap('<leader>dr',  function() return require("dap").repl.open() end)
nmap('<leader>dt',  function() return require("dap").terminate() end)
nmap('<leader>dui', function() return require("dapui").toggle() end)
nmap('<leader>de',  function() return require("dapui").eval() end)

-- [[SymbolsOutline]]
nmap('<leader>so', '<cmd>SymbolsOutline<CR>')

-- [[ Apply macros in multiple lines ]]
vim.cmd([[
  xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

  function! ExecuteMacroOverVisualRange()
    echo "@".getcmdline()
    execute ":'<,'>normal @".nr2char(getchar())
  endfunction
]])


-- [[ Rest Nvim ]]
nmap('<leader>re', '<Plug>RestNvim')
nmap('<leader>rp', '<Plug>RestNvimPreview')
nmap('<leader>rl', '<Plug>RestNvimLast')
