set showmode
set tabstop=4
set smarttab
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set autoindent
set number relativenumber


set cursorline
set showmatch

set incsearch
set hlsearch


syntax enable


call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
call plug#end()

map <C-n> :NERDTreeToggle<CR>

colorscheme wal
