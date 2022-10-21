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
" Open NERDTree at startup
" autocmd VimEnter * NERDTree

" Automatically close NVIM when closing the file (even if NERDTree is still open)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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
" Plugin for distracion-less writing
Plug 'junegunn/goyo.vim'
Plug 'folke/zen-mode.nvim'
" Highligh only current line
Plug 'junegunn/limelight.vim'

" Adwaita colorscheme
Plug 'Mofiqul/adwaita.nvim'
" Nord colorscheme
Plug 'arcticicestudio/nord-vim'
call plug#end()

" Set colorscheme
colorscheme nord
