"Forget compatibility with Vi. Who cares.
noremap <leader>z :!say 'hey dudes'<CR>
set nocompatible
set comments=sr:/**,m:*\ ,ex:*/,://
call pathogen#infect()
"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

set foldmethod=indent
set foldlevelstart=99

" Set colorscheme
colorscheme solarized
"call togglebg#map("<F5>")
" Mapping to switch light/dark background
nmap ]g :ToggleBG<CR>

" vim-gitgutter mappings
nmap ]h :GitGutterNextHunk<CR>
nmap [h :GitGutterPrevHunk<CR>

"Write the old file out when switching between files.
set autowrite

"Display current cursor position in lower right corner.
set ruler

"Ever notice a slight lag after typing the leader key + command? This lowers
"the timeout.
set timeoutlen=500

"Switch between buffers without saving
set hidden

"Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

"Show command in bottom right portion of the screen
set showcmd

"Show lines numbers
set number

"Indent stuff
set smartindent
set autoindent

"Always show the status line
set laststatus=2

"Prefer a slightly higher line height
set linespace=3

"Better line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

"Set incremental searching"
set incsearch

"Highlight searching
set hlsearch

" case insensitive search
set ignorecase
set smartcase

"Hard-wrap paragraphs of text
nnoremap <leader>q gqip

"Enable code folding
set foldenable

"Hide mouse when typing
set mousehide

"Session settings
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help

"Set up an HTML5 template for all new .html files
"autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl

"Load the current buffer in Firefox - Mac specific.
abbrev ff :! open -a firefox.app %:p<cr>

"Shortcut for editing vimrc file in a new tab
nmap <leader>ev :tabedit $MYVIMRC<cr>

"Saves time; maps the spacebar to colon
nmap <space> :

"Map escape key to jj -- much faster
imap jj <esc>

"Delete all buffers (via Derek Wyatt)
nmap <silent> <leader>da :exec "1," . bufnr('$') . "bd"<cr>

"------------------------"
"NERDTREE PLUGIN SETTINGS
"------------------------"
"Shortcut for NERDTreeToggle
nmap <leader>nt :NERDTree<CR>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"--------------------------"
" PERSONAL SETTINGS
" -------------------------"

" Snipmate
"For autocompletion of Snipmate plugin
let g:acp_behaviorSnipmateLength = 1
:filetype plugin on

" Custom Solarized stuff.
let g:thing = $SOLARIZED_THEME
if (thing == "dark")
  set background=dark
endif
let g:solarized_termtrans = 1

" Yank text to the OS X clipboard
set clipboard=unnamed
noremap <leader>y "+y
noremap <leader>yy "+yy

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>

" Use Return key to clear search highlighting
nmap <CR> :nohlsearch<CR>
autocmd BufReadPost quickfix nmap <buffer> <CR> <CR>

" A fancy status bar
let g:Powerline_symbols = 'fancy'
"set t_Co=256
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

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction'

" PHP Shit
let g:blockify_pairs = { 'php.drupal': [ '{', '}' ] }

" Write/quit aliases
:command WQ wq
:command Wq wq
:command W w
:command Q q

"let g:vdebug_options['path_maps'] = {"/var/www/html": "/Users/ryankois/Sites/jaars.dev/jaars"}
"let g:vdebug_options['break_on_open'] = 0
"let g:syntastic_javascript_checkers=['jshint']

let g:signify_sign_overwrite = 0
