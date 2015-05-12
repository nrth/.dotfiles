set nocompatible
filetype off

" VUNDLE START ---------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'sjl/badwolf'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'    " show indentations
Plugin 'kien/ctrlp.vim'         " fuzyfilesearch
Plugin 'tpope/vim-fugitive'     " git integration
Plugin 'Raimondi/delimitMate'   " intelligent autoclosing of brackets etc.
Plugin 'vim-scripts/sudo.vim'   " lets u sudo open files in users session
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'

call vundle#end()
filetype plugin indent on
" VUNDLE END -----------------------------------------------------------------

" VISUALS START --------------------------------------------------------------
colorscheme badwolf
set background=dark
set t_Co=256
syntax enable
set number
let g:badwolf_darkgutter = 0
let g:badwolf_tabline = 2
let g:badwolf_html_link_underline = 1
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:hybrid_use_Xresources = 1
colorscheme badwolf

set laststatus=2
set lazyredraw
set noerrorbells
set novisualbell

let g:indentLine_char = '▸'
let g:indentLine_first_char = '▸'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_color_term = 236

" VISUALS END ----------------------------------------------------------------

" SEARCH START ---------------------------------------------------------------
set hlsearch            " highlight search matches
set incsearch           " dont w8 for enter, jump to first match
set showmatch           " show matching brackets
set ignorecase          " ignore cases
set smartcase           " allow case sensitive override \c \C 
set magic               " enable regular expressions
" SEARCH END -----------------------------------------------------------------

" TABS + INDENT START --------------------------------------------------------
set tabstop=4           " spaces per tab
set softtabstop=4       " spaces inserted when tabbing
set expandtab           " replace tab with spaces
set smarttab
set shiftwidth=4
set ai                  " autoindent
set si                  " smartindent
" TABS + INDENT END ----------------------------------------------------------

" BINDS START ----------------------------------------------------------------
set pastetoggle=<F4>
" BINDS END ------------------------------------------------------------------

" FS START -------------------------------------------------------------------
set encoding=utf-8
set ffs=unix,dos,mac
autocmd BufWinLeave *.* mkview           " save view (foldings etc.)
autocmd BufWinEnter *.* silent loadview  " reload view
set nowritebackup
set noswapfile
" FS END ---------------------------------------------------------------------

" LANGS START ----------------------------------------------------------------
"au BufNewFile,BufRead *.rs set filetype=rust
"au BufNewFile,BufRead /etc/nginx/* set filetype=nginx

set wildignore+=*.pyc

" LANGS END ------------------------------------------------------------------
