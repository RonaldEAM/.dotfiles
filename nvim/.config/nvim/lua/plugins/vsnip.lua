return {
  {
    "hrsh7th/vim-vsnip",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    init = function()
      vim.cmd("let g:vsnip_filetypes = {}")
      vim.cmd("let g:vsnip_filetypes.javascript = ['typescript']")
      vim.cmd("let g:vsnip_filetypes.javascriptreact = ['typescript']")
      vim.cmd("let g:vsnip_filetypes.typescriptreact = ['typescript']")
      vim.cmd("let g:vsnip_filetypes.html = ['typescript']")
      vim.cmd("let g:vsnip_filetypes.vue = ['typescript']")

      -- <c-k> is my expansion key
      -- this will expand the current item or jump to the next item within the snippet.
      vim.cmd("imap <expr> <C-k> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-k>'")
      vim.cmd("smap <expr> <C-k> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-k>'")

      -- <c-j> is my jump backwards key.
      -- this always moves to the previous item within the snippet
      vim.cmd("imap <expr> <C-j> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<C-j>'")
      vim.cmd("smap <expr> <C-j> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<C-j>'")
    end
  }
}
