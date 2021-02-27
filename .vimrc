syntax enable
set nohlsearch
set hidden
" tab settings "
set tabstop=4
set softtabstop=4 noexpandtab
set shiftwidth=4
set expandtab
set smartindent
" line number "
set nu
set relativenumber
set nowrap
set ignorecase
" if search with upper case -> c sensitive "
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=10
" beeping "
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
set backspace=indent,eol,start

set cmdheight=2
set mouse=a
set updatetime=500

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
" autosave "
Plug '907th/vim-auto-save'
" git "
Plug 'tpope/vim-fugitive'
" status line"
Plug 'vim-airline/vim-airline'
" file tree "
Plug 'scrooloose/nerdtree'
" undo tree "
Plug 'mbbill/undotree'
Plug 'valloric/youcompleteme'
" fuzzy file finder "
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" color scheme "
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark

let g:newtrw_winsize = 25
let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" Autosave setup "
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave"]
"UndoTree setup"
nnoremap <leader>u :UndotreeShow<bar> :UndotreeFocus<CR>
"NerdTree setup"
nnoremap <leader>d :NERDTreeToggle<CR>
autocmd BufWinEnter * silent NERDTreeMirror
autocmd VimEnter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"YCM"
"BIG Caviar here"
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
nnoremap <silent> <leader>gt :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gd :YcmCompleter GetDoc<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
"tab control"
nnoremap <leader>tn :tabnew<Space>
nnoremap <leader>te :tabedit<Space>
nnoremap tl gt
nnoremap th gT
"yank word and paste word from black hole"
nnoremap <leader>p "0p<CR>
nnoremap <leader>P "0P<CR>
"FZF"
nnoremap <leader>f :Files<CR>

" func to trim trailing whitespace "
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
augroup TOMMY
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
