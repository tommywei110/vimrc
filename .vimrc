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
set mouse=a
set updatetime=50

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
" git "
Plug 'tpope/vim-fugitive'
" file tree "
Plug 'scrooloose/nerdtree'
" undo tree "
Plug 'mbbill/undotree'
Plug 'valloric/youcompleteme'
Plug 'kien/ctrlp.vim'
" fuzzy file finder "
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" color scheme "
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark
set backspace=indent,eol,start

let g:ctrlp_use_caching = 0
let g:newtrw_winsize = 25
let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
"UndoTree setup"
nnoremap <leader>u :UndotreeShow<bar> :UndotreeFocus<CR>
"NerdTree setup"
nnoremap <leader>d :NERDTreeToggle<CR>
autocmd BufWinEnter * silent NERDTreeMirror
autocmd VimEnter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"YCM"
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR> 
"tab control"
nnoremap <leader>tn :tabnew<Space>
nnoremap tl gt
nnoremap th gT
"yank word and paste word from black hole"
nnoremap <leader>p "0p<CR>
nnoremap <leader>P "0P<CR>
