call plug#begin('~/.vim/plugged')
Plug 'jonathanfilip/vim-lucius'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-fugitive'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
call plug#end()

filetype plugin indent on
syntax on
set t_Co=256

set encoding=utf-8
set fileencoding=utf-8

"colors hybrid_material
"colors hybrid_reverse
"set background=dark

colorscheme lucius
LuciusLightHighContrast

if has('gui_running')
    set lines=36
    set columns=110
    set guifont=Consolas:h13:cRUSSIAN
endif

" Eliminate ESC delay
set timeoutlen=1000
set ttimeoutlen=0

" Experimental from https://github.com/fatih/vim-go-tutorial/blob/master/vimrc
set ttyfast
set ttyscroll=3
set autoread
set noerrorbells
set noswapfile
set nobackup
set autowrite
set noshowmode
set pumheight=10
set lazyredraw
set nocursorcolumn
set nocursorline
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

" Main settings
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

set mouse=a
set nocompatible
set linebreak
set laststatus=2
set number
set hlsearch
set hidden
set ignorecase
set smartcase
set backspace=indent,eol,start
set ruler
set showcmd

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set incsearch

let mapleader = ","

" Jump to next error with Ctrl-n and previous error with Ctrl-m. Close the
" quickfix window with <leader>a
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

let NERDTreeWinPos="right"
nmap <F9> :NERDTreeToggle<CR>
"nmap <C-p> :FZF<CR>

"let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
au FileType go map <F8> <Plug>(go-build)
au FileType go map <F5> <Plug>(go-run)
au FileType go map <Leader>r :wa<CR>:GoRun<CR>
au FileType go map <C-F5> :wa<CR>:GoRun<CR>
au FileType go map <Leader>i <Plug>(go-install)
au FileType go map <F12> <Plug>(go-def)
au FileType go map <Leader>d <Plug>(go-doc)
au FileType go map <Leader>t <Plug>(go-test)
au FileType go map <Leader>c <Plug>(go-test-func)
