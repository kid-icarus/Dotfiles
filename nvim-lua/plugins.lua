return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'mustache/vim-mustache-handlebars'
  use 'moll/vim-node'
  use 'docunext/closetag.vim'
  use 'sjl/gundo.vim'
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
    end,
  }
  use 'tomtom/tcomment_vim'
  use 'tomtom/tlib_vim'
  use 'MarcWeber/vim-addon-mw-utils'
  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } },
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'bling/vim-airline'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end,
  }
  use 'tpope/vim-eunuch'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-markdown'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  use 'ntpeters/vim-better-whitespace'
  use 'morhetz/gruvbox'
  use 'altercation/vim-colors-solarized'
  use 'schickling/vim-bufonly'
  use 'sheerun/vim-polyglot'
  use 'metakirby5/codi.vim'
  -- use {
  --   'neoclide/coc.nvim', branch = 'release'
  -- }
  -- lsp stuff
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
  }
  use 'L3MON4D3/LuaSnip'
  -- autocompletion via nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-tree/nvim-tree.lua'
  use 'github/copilot.vim'
  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
  }
  use {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require('octo').setup()
    end,
  }
  use {
    'jcdickinson/http.nvim',
    run = 'cargo build --workspace --release',
  }
  use {
    '~/Projects/personal/jira.nvim',
    requires = {
      'jcdickinson/http.nvim',
    },
    config = function()
      require('jira').setup()
    end,
  }
end)
