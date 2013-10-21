if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

set encoding=utf-8
set fileencoding=utf-8
set comments=sr:/**,m:*\ ,ex:*/,://
set number

"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

"folding
set foldenable
set foldmethod=indent
set foldlevelstart=99


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


"Prefer a slightly higher line height
" set linespace=3

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

"abbrev
abbrev ff :! open -a firefox.app %:p<cr>

"maps
nnoremap <space> :
nnoremap <leader>q gqip
nnoremap <leader>z f,a<cr><esc>
nnoremap ]g :set background=dark<cr>
nnoremap ]z :set background=light<cr>
nnoremap <c-u> viWUEa
nnoremap <leader>ev :vsp $VIMRC<cr>
nnoremap <leader>es :source $VIMRC<cr>
inoremap jk <esc>

"autcomd
autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl


" Custom Solarized stuff.
let g:thing = $SOLARIZED_THEME
if (thing == "dark")
  set background=dark
endif
let g:solarized_termtrans = 1

" Yank text to the OS X clipboard
set clipboard=unnamed
noremap y "*y
noremap yy "+yy

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
" NeoBundle
"Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'bkad/CamelCaseMotion'
NeoBundle 'theunraveler/Drupal-Snippets-for-Vim'
" NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'vim-scripts/argtextobj.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'sanguis/drupal-snippets'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'kid-icarus/icarus_snipz'
NeoBundle 'juvenn/mustache.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'honza/snipmate-snippets'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tomtom/tcomment_vim'
"NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'davidoc/todo.txt-vim'
NeoBundle 'joonty/vdebug'
NeoBundle 'bling/vim-airline'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'mhinz/vim-blockify'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'dahu/vim-fanfingtastic'
NeoBundle 'jelera/vim-javascript-syntax'
"NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'beyondwords/vim-twig'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-tbone'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'mikewest/vimroom'
NeoBundle 'http://git.drupal.org/project/vimrc.git'
NeoBundle 'Shougo/vimproc'

"Syntastic
let g:syntastic_error_symbol="💩"
let g:syntastic_style_error_symbol="🍔"

"Powerline
set laststatus=2
"let g:Powerline_symbols = 'fancy'

"signify
let g:signify_sign_overwrite = 0

" Snipmate
"For autocompletion of Snipmate plugin
let g:acp_behaviorSnipmateLength = 1
":filetype plugin on
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
colorscheme solarized
set background=dark
let g:airline_powerline_fonts=1
