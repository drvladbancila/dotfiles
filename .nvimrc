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

set path+=**

" Tagbar settings
let g:tagbar_autoshowtag = 1
" Open NERDTree at startup
"autocmd VimEnter * NERDTree
" autocmd VimEnter * Tagbar

" Automatically close NVIM when closing the file (even if NERDTree is still open)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"            \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Keybindings for VimBuffet
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

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
" Plugin for distracion-less writing
Plug 'junegunn/goyo.vim'
Plug 'folke/zen-mode.nvim'
" Highligh only current line
Plug 'junegunn/limelight.vim'
" Add icons to plugins
Plug 'ryanoasis/vim-devicons'
" Adwaita colorscheme
Plug 'Mofiqul/adwaita.nvim'
" Nord colorscheme
Plug 'arcticicestudio/nord-vim'
" SystemVerilog instantiate
Plug 'antoinemadec/vim-verilog-instance'
" Vim Tmux Navigator
Plug 'christoomey/vim-tmux-navigator'

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

" Resize windows easily
"Plug 'anotherproksy/ez-window'
" Display context
Plug 'wellle/context.vim'
" Tab bar
Plug 'bagrat/vim-buffet'
" Commit browser
Plug 'gregsexton/gitv', {'on': ['Gitv']}
call plug#end()

" Set colorscheme
colorscheme nord
