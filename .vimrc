"""""""""""""""""""
" VIM Configuration
"
"

" Enable syntax highlighting
syntax enable
" Add lines numbers
set number
" Ignore cases when searching
set ignorecase
set smartcase
" Highlight search results
set hlsearch
" Incremental highlighting on search
set incsearch
" Show matching brackets when cursor is over a bracket
set showmatch

" Turn backup and swap file off
set nobackup
set nowb
set noswapfile

" Use spaces when pressing tab
set expandtab
" Smart Tabs
set smarttab
" Tab length: 4 spaces
set shiftwidth=4
set tabstop=4

" Set auto-indent and smart indent
set ai
set si
" Wrap Lines
set wrap

" Tagbar settings
let g:tagbar_autoshowtag = 1
" Call FixWhitespace before saving the file
autocmd BufWritePre * FixWhitespace

" Clipboard
set clipboard=unnamedplus

" Move lines of code with Alt-j and Alt-k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


" PLUGINS
call plug#begin()
" Git wrapper
Plug 'tpope/vim-fugitive'
" File tree
Plug 'scrooloose/nerdtree'
" Status bar (airline) on the bottom
Plug 'vim-airline/vim-airline'
" Window tag
Plug 'majutsushi/tagbar'
" Autocompletion plugin
Plug 'valloric/youcompleteme'
" Trailing white spaces plugin
Plug 'bronson/vim-trailing-whitespace'
" Vim Resize
Plug 'antoinemadec/vim-verilog-instance'
" Vim Tmux Navigator
Plug 'christoomey/vim-tmux-navigator'
" Vim undo tree
Plug 'mbbill/undotree'
Plug '~/Code/svxplor'
call plug#end()
