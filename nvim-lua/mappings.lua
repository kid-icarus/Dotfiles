function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
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

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

function xmap(shortcut, command)
  map('x', shortcut, command)
end

vim.api.nvim_set_keymap('n', '<space>', ':', { noremap = true })

vmap('<Cmd><Right>', '<cmd>Gbrowse<cr>')
imap('jk', '<esc>')
nmap('<leader>s', ':set spell!<cr>')
nmap('<leader>nt', ':NERDTreeToggle<cr>')
nmap('<leader>l', ':set list!<cr>')
nmap('<cr>', '<cmd>nohlsearch<cr>')
nmap(']r', ':tabnext<cr>')
nmap('[r', ':tabprev<cr>')
nmap(';', '<cmd>Telescope buffers<cr>')
nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fm', '<cmd>lua vim.lsp.buf.formatting()<cr>')
nmap('<leader>r', '<cmd>Telescope live_grep<cr>')

-- CoC mappings
-- nmap('gD', '<Plug>(coc-type-definition)')
-- nmap('gd', '<Plug>(coc-definition)')
-- nmap('gi', '<Plug>(coc-implementation)')
-- nmap('gr', '<Plug>(coc-references)')
-- nmap('<leader>rn', '<Plug>(coc-rename)')
-- nmap('<leader>a', '<Plug>(coc-codeaction-selected)')
-- xmap('<leader>a', '<Plug>(coc-codeaction-selected)')
-- nmap('<leader>ac', '<Plug>(coc-codeaction)')
-- nmap('<leader>qf', '<Plug>(coc-fix-current)')
-- nmap('<leader>cl', '<Plug>(coc-codelens-action)')
-- nmap('<leader>a', '<cmd>CocList diagnostics<cr>')
-- nmap('<leader>e', '<cmd>CocList extensions<cr>')
-- nmap('<leader>c', '<cmd>CocList commands<cr>')
-- nmap('<leader>o', '<cmd>CocList outline<cr>')
-- nmap('<leader>s', '<cmd>CocList -I symbols<cr>')


