set showmode
set showcmd
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
Plug '/home/patrik/git/fzf'
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
Plug 'mileszs/ack.vim'
Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-expand-region'
Plug 'benmills/vimux'
Plug 'fatih/vim-go'
Plug 'posva/vim-vue'
Plug 'hashivim/vim-terraform'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'rhysd/vim-clang-format'
call plug#end()

" clang format
autocmd FileType c ClangFormatAutoEnable

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1

let g:syntastic_rust_checkers = ['cargo']

" rust
let g:rustfmt_autosave = 1

" vimtex
let g:vimtex_view_method = 'zathura'

" terraform
let g:terraform_align=1

" change leader and some keymap
let mapleader = ","
nnoremap <Leader>w :w<CR>

" vimux
map <Leader>v :VimuxPromptCommand<CR>
map <Leader><Leader> :VimuxRunLastCommand<CR>

" vim expand
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" search & replace
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" fzf
set rtp+=/home/patrik/git/fzf
nmap ; :Buffer<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" ag
let g:ackprg = 'ag --vimgrep'

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" colorscheme
colorscheme wal

" goyo o/
function! ProseMode()
    call goyo#execute(0, [])
    set spell noci nosi noai nolist noshowmode noshowcmd
    set complete+=s
endfunction

command! ProseMode call ProseMode()
nmap \p :ProseMode<CR>

" ctrl p
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif



" go
let g:go_fmt_command = "goimports"
