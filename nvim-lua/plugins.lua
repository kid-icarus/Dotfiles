return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'mustache/vim-mustache-handlebars'
  use 'moll/vim-node'
  use 'docunext/closetag.vim'
  use 'Raimondi/delimitMate'
  use 'sjl/gundo.vim'
  use 'tomtom/tcomment_vim'
  use 'tomtom/tlib_vim'
  use 'MarcWeber/vim-addon-mw-utils'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'bling/vim-airline'
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-markdown'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  use 'ntpeters/vim-better-whitespace'
  use 'scrooloose/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'morhetz/gruvbox'
  use 'altercation/vim-colors-solarized'
  use 'schickling/vim-bufonly'
  use 'sheerun/vim-polyglot'
  use 'metakirby5/codi.vim'
  -- use {
  --   'neoclide/coc.nvim', branch = 'release'
  -- }
  -- lsp stuff
  use 'neovim/nvim-lspconfig'
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'L3MON4D3/LuaSnip'
  -- autocompletion via nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
end)
