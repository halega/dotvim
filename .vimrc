execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme lucius
LuciusWhite

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

nmap <silent><Leader>p :NERDTreeToggle<CR>
let NERDTreeWinPos="right"

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>r :GoRun %<CR>
au Filetype go nnoremap <leader>m :make<CR>
au Filetype go nnoremap <leader>b :GoBuild<CR>
