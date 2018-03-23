call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'fatih/vim-go'
Plug 'editorconfig/editorconfig-vim'
Plug 'Raimondi/delimitMate'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/AutoComplPop'

call plug#end()

" Settings
set laststatus=2
set mouse=a " Can use mouse
set number " See line numbers
set showcmd " Show what I'm typing
set incsearch " Show the match while typing
set hlsearch " Highlight found searches
set ignorecase " Search case insensitive
set smartcase " If parttern contains an uppercase letter, it is case sensitive
set noshowmode " Show mode with airline or lightline
set splitright " Split window to the right of the current window
set splitbelow " Split window below the current window

" color
syntax enable
set background=dark
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" delimitMate
let g:delimitMate_expand_space = 1
let g:delimitMate_smart_quotes = 1
