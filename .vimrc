execute pathogen#infect()
filetype plugin indent on
syntax off

colorscheme lucius
LuciusLightHighContrast

set mouse=a

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

if has ("gui_running")
	set go-=T
	set go-=m
	set lines=36
	set columns=100
endif

let mapleader = ","
let NERDTreeWinPos="right"

nmap <silent><leader>n :NERDTreeToggle<CR>
nmap <silent><leader>p :YRShow<CR>

let g:ctrlp_map = '<Leader>bf'
nmap <Leader>bb :CtrlPBuffer<CR>
nmap <Leader>bm :CtrlPMRUFiles<CR>

nnoremap <ESC><ESC> :nohlsearch<CR>

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

au Filetype go nnoremap <leader>m :make<CR>

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gt <Plug>(go-doc-tab)

au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
