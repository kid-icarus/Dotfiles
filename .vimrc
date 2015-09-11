set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

"Show command in bottom right portion of the screen
set showcmd

let mapleader=","

"Better line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

"search stuff
set incsearch
set hlsearch
set ignorecase
set smartcase

"session
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help

"maps
nnoremap <space> :
nmap <leader>q ysiw'
nmap <silent><leader>s :set spell!<CR>
nnoremap <leader>z f,a<cr><esc>
nnoremap ]g :set background=dark<cr>
nnoremap ]z :set background=light<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>
inoremap jk <esc>

"autcomd
autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 

set background=dark
" Custom Solarized stuff.
let g:thing = $SOLARIZED_THEME
if (thing == "dark")
  set background=dark
endif
let g:solarized_termtrans = 1

" Yank text to the OS X clipboard
set clipboard=unnamed
noremap y "+y
noremap yy "+yy
noremap p "+p

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>

" Use Return key to clear search highlighting
nmap <CR> :nohlsearch<CR>
autocmd BufReadPost quickfix nmap <buffer> <CR> <CR>

" A fancy status bar
set t_Co=256
set backspace=2 "

" Delimate settings
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" Random stuff
set colorcolumn=80

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Write/quit aliases
:command WQ wq
:command Wq wq
:command W w
:command Q q

"Markdown to HTML  
nnoremap <leader>md :%!/usr/local/bin/markdown <cr>  

inoremap <c-u> <esc>viWUEa
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""
"        _             _            "
"  _ __ | |_   _  __ _(_)_ __  ___  "
" | '_ \| | | | |/ _` | | '_ \/ __| "
" | |_) | | |_| | (_| | | | | \__ \ "
" | .__/|_|\__,_|\__, |_|_| |_|___/ " 
" |_|            |___/              "
"                                   "
"""""""""""""""""""""""""""""""""""""
" VUNDLE
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'bkad/CamelCaseMotion'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'

" General crap
Plugin 'bling/vim-airline'
Plugin 'mhinz/vim-signify'

" Tpope
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-unimpaired'
Plugin 'Shougo/vimproc'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-characterize'
Plugin 'vim-scripts/glsl.vim'
Plugin 'scrooloose/nerdtree'

" Colorschemes
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'

" JS Plugins
Plugin 'marijnh/tern_for_vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'JavaScript-Indent'
Plugin 'othree/javascript-libraries-syntax.vim'

" Clojure stuff
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-clojure-static'
"Enable filetypes
call vundle#end()
filetype on
filetype plugin on
filetype indent on
syntax on

set laststatus=2

"signify
let g:signify_sign_overwrite = 0

" Ultisnip Triggers
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:UltiSnipsListSnippets="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>" 


" Tern
let g:tern_map_keys=1

colorscheme gruvbox
nmap <leader>z ys$"ys$}li"content": "<esc>$i, "tags": []}<esc>j0
nnoremap dp :diffput<cr>
