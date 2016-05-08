execute pathogen#infect()
filetype plugin indent on
syntax on

colorscheme lucius
LuciusWhiteHighContrast

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
set showmode
set noshowmatch

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set incsearch

let mapleader = ","

vnoremap <Leader>c :%w !xsel -ib<CR><CR>
noremap <Leader>p :r !xsel -ob<CR><CR>

let NERDTreeWinPos="right"
nmap <F9> :NERDTreeToggle<CR>

map <Leader> <Plug>(easymotion-prefix)
hi link EasyMotionShade Comment
hi link EasyMotionTarget2First EasyMotionTarget
hi link EasyMotionTarget2Second Question

let g:go_fmt_command = "goimports"
au FileType go map <F8> <Plug>(go-build)
au FileType go map <F5> <Plug>(go-run)
au FileType go map <C-F5> <Plug>(go-install)
au FileType go map <Leader>i <Plug>(go-install)
au FileType go map <F12> <Plug>(go-def)
au FileType go map <Leader>d <Plug>(go-doc)
