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
