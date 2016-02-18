call plug#begin('~/.vim/plugged')
Plug 'pmsorhaindo/syntastic-local-eslint.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'bkad/CamelCaseMotion'
Plug 'vim-scripts/argtextobj.vim'
Plug 'kien/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
" General crap
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
" Tpope
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
Plug 'Shougo/vimproc'
Plug 'freitass/todo.txt-vim.git'
" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-characterize'
Plug 'vim-scripts/glsl.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
" JS Plugs
"Plug 'marijnh/tern_for_vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'JavaScript-Indent'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
" Clojure stuff
Plug 'tpope/vim-fireplace'
Plug 'kien/rainbow_parentheses.vim'
Plug 'guns/vim-clojure-static'
call plug#end()

" Plugin settings
let g:syntastic_javascript_checkers = ['eslint']
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let g:signify_sign_overwrite = 0
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:UltiSnipsListSnippets="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:tern_map_keys=1

" SETTINGS
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
colorscheme gruvbox
let mapleader=","
set background=dark
set encoding=utf-8
set fileencoding=utf-8
set comments=sr:/**,m:*\ ,ex:*/,://
set number
" set relativenumber
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
set clipboard=unnamedplus
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

" keybindings/maps
inoremap jk <esc>
nnoremap <space> :
nmap <leader>q ysiw'
nmap <silent><leader>s :set spell!<CR>
nnoremap <leader>nt :NERDTreeToggle<cr>
nmap <leader>l :set list!<CR>
" find comma, append newline after comma
nnoremap <leader>z f,a<cr><esc>
" Use Return key to clear search highlighting
nmap <CR> :nohlsearch<CR>
autocmd BufReadPost quickfix nmap <buffer> <CR> <CR>
" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>
nmap <F8> :TagbarToggle<CR>
nmap <leader>z ys$"ys$}li"content": "<esc>$i, "tags": []}<esc>j0
nnoremap dp :diffput<cr>
"auto command stuff.
autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

