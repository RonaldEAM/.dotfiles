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

-- [[ gitgutter ]]
-- nmap ]h <Plug>(GitGutterNextHunk)
-- nmap [h <Plug>(GitGutterPrevHunk)

-- [[ fugitive ]]
nmap('<leader>gs', ':G<CR>')

-- " vim-test
-- nmap <Leader>tn :TestNearest<CR>
-- nmap <Leader>tf :TestFile<CR>
-- nmap <Leader>ts :TestSuite<CR>
-- " nmap <Leader>tl :TestLast<CR>
-- " nmap <Leader>tg :TestVisit<CR>

-- [[ harpoon ]]
nmap('<leader>mf', function() return require("harpoon.mark").add_file() end)
nmap('<leader>mt', function() return require("harpoon.ui").toggle_quick_menu() end)
nmap('<leader>m1', function() return require("harpoon.ui").nav_file(1) end)
nmap('<leader>m2', function() return require("harpoon.ui").nav_file(2) end)
nmap('<leader>m3', function() return require("harpoon.ui").nav_file(3) end)
nmap('<leader>m4', function() return require("harpoon.ui").nav_file(4) end)

-- [[ Find files using Telescope command-line sugar. ]]
nmap('<leader>ff',  function() return require("telescope.builtin").find_files() end)
nmap('<leader>fg',  function() return require("telescope.builtin").live_grep() end)
nmap('<leader>fb',  function() return require("telescope.builtin").buffers() end)
nmap('<leader>fh',  function() return require("telescope.builtin").help_tags() end)
nmap('<leader>tgs', function() return require("telescope.builtin").git_status() end)
nmap('gr', ':Telescope lsp_references<CR>')
nmap('gd', ':Telescope lsp_definitions<CR>')
nmap('<leader>gh', ':Telescope git_commits<CR>')
