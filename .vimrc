call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'mustache/vim-mustache-handlebars'
Plug 'glidenote/newdayone.vim'
Plug 'moll/vim-node'
Plug 'junegunn/fzf.vim'
Plug 'docunext/closetag.vim'
" Plug 'w0rp/ale'
Plug 'Raimondi/delimitMate'
Plug 'sjl/gundo.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
" General crap
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Tpope
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
" Plug 'Shougo/vimproc'
" Snippets
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ntpeters/vim-better-whitespace' " highlight traling ws
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
" JS Plugs
Plug 'schickling/vim-bufonly'
Plug 'sheerun/vim-polyglot'
Plug 'metakirby5/codi.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
call plug#end()

let mapleader=","

" Plugin settings
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let g:signify_sign_overwrite = 0
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:github_enterprise_urls = ['https://git.blendlabs.com']

" SETTINGS
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
colorscheme gruvbox
set background=dark
set encoding=utf-8
set fileencoding=utf-8
set comments=sr:/**,m:*\ ,ex:*/,://
set number
set relativenumber
"folding
set foldenable
set foldmethod=indent
set foldlevelstart=99
"Spell Checking
set spelllang=en_us
set splitbelow
"Write the old file out when switching between files.
set autowrite
"Display current cursor position in lower right corner.
set ruler
set timeoutlen=500
set hidden
"Indent stuff
set smartindent
set autoindent
"Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help
set t_Co=256
set backspace=2 "
set colorcolumn=80
set listchars=tab:▸\ ,eol:¬
set clipboard=unnamed
set laststatus=2
"Better line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
"search stuff
set incsearch
set hlsearch
set ignorecase
set smartcase
"Show command in bottom right portion of the screen
set showcmd
set updatetime=250
set termguicolors

" keybindings/maps
vnoremap <Cmd><Right> :GBrowse<cr>
inoremap jk <esc>
nnoremap <space> :
nmap <leader>q ysiw'
nmap <silent><leader>s :set spell!<CR>
nnoremap <leader>nt :NERDTreeToggle<cr>
nmap <leader>l :set list!<CR>
" find comma, append newline after comma
nnoremap <leader>z f,a<cr><esc>
" Use Return key to clear search highlighting
nmap <CR> <cmd>nohlsearch<CR>
autocmd BufReadPost quickfix nmap <buffer> <CR> <CR>
" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>
"nnoremap dp :diffput<cr>
"
nmap ]r :tabnext<cr>
nmap [r :tabprev<cr>
nnoremap <leader>a  :<C-u>CocList -I symbols<cr>
nnoremap <leader>b  :Git blame<cr>

" inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
" inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
"
" Telescope maps
nnoremap ; <cmd>Telescope buffers<cr>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>r <cmd>Telescope live_grep<cr>

"auto command stuff.
autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl
autocmd BufWritePre *.md :%!prettier --parser markdown --prose-wrap always
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "typescript", "tsx" },
  sync_install = false,
  auto_install = true,
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
