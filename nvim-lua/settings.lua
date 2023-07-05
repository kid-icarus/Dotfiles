vim.g.nobackup = true
vim.g.nowritebackup = true
vim.g.updatetime = 300
vim.wo.signcolumn = 'yes'
vim.g.mapleader = ','
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.foldenable = true
vim.opt.foldlevel = 20
vim.opt.foldmethod = 'indent'
-- treesitter folding is broken :( https://github.com/nvim-telescope/telescope.nvim/pull/1643
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.termguicolors = true

-- White characters
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.clipboard = 'unnamed'
vim.opt.laststatus = 3
vim.opt.wrap = true
vim.cmd 'colorscheme gruvbox'
