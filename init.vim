call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'fatih/vim-go'
Plug 'editorconfig/editorconfig-vim'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
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
set autochdir " :e is based on current directory

" color
syntax enable
set background=dark
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" delimitMate
let g:delimitMate_expand_space = 1
let g:delimitMate_smart_quotes = 1

" vim-airline
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1 " Enable the tabline
let g:airline#extensions#tabline#buffer_nr_show = 1 " Show buffer numbers on tabline

" NERDTree
let NERDTreeShowHidden=1

" Command alt
let mapleader = "."
nmap <leader>nt :NERDTree<cr>
nmap <leader>ff :FufFile<cr>

" Vim-go settings
let g:go_auto_sameids = 1 " highlight all uses of the identifier under the cursor automatically
