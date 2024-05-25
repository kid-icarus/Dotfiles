-- local ls = require 'luasnip'
function map(mode, shortcut, command)
  vim.keymap.set(mode, shortcut, command, { noremap = true, silent = true })
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

local function toggleBackground()
  if vim.o.background == 'dark' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
end

vim.keymap.set('n', '<space>', ':', { noremap = true })

nmap('<leader>a', '<cmd>Git blame<cr>')
nmap('<leader>g', ':GBrowse<cr>')
vmap('<leader>g', ':GBrowse<cr>')
nmap('<leader>G', ':GBrowse!<cr>')
vmap('<leader>G', ':GBrowse!<cr>')
imap('jk', '<esc>')
nmap('<leader>s', ':set spell!<cr>')
nmap('<leader>nt', ':NvimTreeToggle<cr>')
nmap('<leader>l', ':set list!<cr>')
nmap('<cr>', '<cmd>nohlsearch<cr>')
nmap(']r', ':tabnext<cr>')
nmap('[r', ':tabprev<cr>')
nmap('<leader>fd', '<cmd>Telescope buffers<cr>')
nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fm', '<cmd>lua vim.lsp.buf.format()<cr>')
nmap('<leader>r', '<cmd>Telescope live_grep<cr>')
nmap('<leader>pr', '<cmd>Octo search assignee:ryank is:pr is:open<cr>')
nmap('<leader>d', toggleBackground)
nmap('<leader><leader>s', '<cmd>source %<cr>')

-- map({ 'i', 's' }, '<c-k>', function()
--   if ls.expand_or_jumpable() then
--     ls.expand_or_jump()
--   end
-- end)
--
-- map({ 'i', 's' }, '<c-j>', function()
--   if ls.jumpable(-1) then
--     ls.jump(-1)
--   end
-- end)
