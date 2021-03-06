call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'Raimondi/delimitMate'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'morhetz/gruvbox'

call plug#end()

syntax on
set number
set t_Co=256
set background=dark

let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

set laststatus=2
let g:airline_powerline_fonts = 1

set hlsearch
set incsearch
set showmatch

set tabstop=2
set expandtab
set shiftwidth=2
set ai

let g:netrw_liststyle=3

set encoding=utf-8
set ffs=unix,dos,mac
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

set noerrorbells
set updatetime=250

nnoremap <Space> za
