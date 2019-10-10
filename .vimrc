call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'mustache/vim-mustache-handlebars'
" Plug 'glidenote/newdayone.vim'
Plug 'moll/vim-node'
Plug 'junegunn/fzf.vim'
Plug 'docunext/closetag.vim'
" Plug 'w0rp/ale'
Plug 'bkad/CamelCaseMotion'
Plug 'vim-scripts/argtextobj.vim'
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
" Plug 'pangloss/vim-javascript'
" Plug  'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'leafgarland/typescript-vim'
" TS Plugs
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'metakirby5/codi.vim'
call plug#end()

let mapleader=","
call camelcasemotion#CreateMotionMappings('<leader>')
" Plugin settings
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let g:signify_sign_overwrite = 0
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"let g:tern_map_keys=1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
" let g:ale_linters = { 'javascript': ['eslint'] }
" let g:ale_linters = { 'typescript': ['tslint'] }
" let g:ale_fixers = { 'javascript': ['eslint'] }
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
vnoremap <Cmd><Right> :Gbrowse<cr>
inoremap jk <esc>
nnoremap <space> :
nmap <leader>q ysiw'
nmap <silent><leader>s :set spell!<CR>
nnoremap <leader>nt :NERDTreeToggle<cr>
nmap <leader>l :set list!<CR>
nmap ; :Buffers<CR>
noremap <Leader>f :Files<CR>
" find comma, append newline after comma
nnoremap <leader>z f,a<cr><esc>
" Use Return key to clear search highlighting
nmap <CR> :nohlsearch<CR>
autocmd BufReadPost quickfix nmap <buffer> <CR> <CR>
" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>
"nnoremap dp :diffput<cr>
"
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf <Plug>(coc-fix-current)
"
"auto command stuff.
autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
