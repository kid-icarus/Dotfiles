filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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
nnoremap <leader>ev :vsp $VIMRC<cr>
nnoremap <leader>es :source $VIMRC<cr>
inoremap jk <esc>

"autcomd
autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl

set background=dark
" Custom Solarized stuff.
let g:thing = $SOLARIZED_THEME
if (thing == "dark")
  set background=dark
endif
let g:solarized_termtrans = 1

" Yank text to the OS X clipboard
" set clipboard=unnamed
" noremap y "+y
" noremap yy "+yy
" noremap p "+p

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
if !exists(":Drta")
  command Drta !drush ws --tail
endif

" Random stuff
set colorcolumn=80

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" PHP Shit
let g:blockify_pairs = { 'php': [ '{', '}' ] }

" Write/quit aliases
:command WQ wq
:command Wq wq
:command W w
:command Q q

"let g:vdebug_options['path_maps'] = {"/var/www/html": "/Users/ryankois/Sites/jaars.dev/jaars"}
"let g:vdebug_options['break_on_open'] = 0
"let g:syntastic_javascript_checkers=['jshint']
"let g:syntastic_php_phpcs_args='--standard=Drupal'
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']


nnoremap <leader>nt :NERDTreeToggle<cr>
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
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bkad/CamelCaseMotion'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'sjl/gundo.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'honza/vim-snippets'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'tomtom/tlib_vim'
Bundle 'davidoc/todo.txt-vim'
Bundle 'joonty/vdebug'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'mhinz/vim-blockify'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-eunuch'
Bundle 'dahu/vim-fanfingtastic'
" JS Plugins
Bundle 'jelera/vim-javascript-syntax'
Bundle 'JavaScript-Indent'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'bling/vim-airline'
Bundle 'rodjek/vim-puppet'
Bundle 'mhinz/vim-signify'
Bundle 'beyondwords/vim-twig'
Bundle 'krisajenkins/dbext.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-tbone'
Bundle 'tpope/vim-unimpaired'
Bundle 'mikewest/vimroom'
" Bundle 'http://git.drupal.org/project/vimrc.git'
Bundle 'Shougo/vimproc'
Bundle 'SirVer/ultisnips'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'sanguis/drupal-snippets'
Bundle 'tpope/vim-characterize'

" Clojure stuff
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'guns/vim-clojure-static'
" Bundle 'Slava/vim-colors-tomorrow'
"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

"Syntastic
" let g:syntastic_error_symbol="💩"
" let g:syntastic_style_error_symbol="🍔"

"Powerline
set laststatus=2
" let g:Powerline_symbols = 'fancy'

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

colorscheme solarized
nmap <leader>z ys$"ys$}li"content": "<esc>$i, "tags": []}<esc>j0

