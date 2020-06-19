syntax enable 

set nohlsearch
set hidden
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noeb vb t_vb= 
au GUIEnter * set vb t_vb=

set cmdheight=2

set updatetime=50

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'kien/ctrlp.vim'
" color scheme "
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark
set backspace=indent,eol,start

let g:ctrlp_use_caching = 0
let g:newtrw_winsize = 25
let mapleader = " "

nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>
"UndoTree setup"
nmap <leader>u :UndotreeShow<bar> :UndotreeFocus<CR>
"NerdTree setup"
nmap <leader>d :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"YCM"
nmap <silent> <leader>gd :YcmCompleter GoTo<CR>
nmap <silent> <leader>gf :YcmCompleter FixIt<CR> 
