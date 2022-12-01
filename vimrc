let mapleader=" "

syntax on

filetype off
filetype indent on
filetype plugin on
filetype plugin indent on

noremap <LEADER><CR> :nohl<CR>
noremap <LEADER>w<CR> :w<CR>
noremap <LEADER>q<CR> :q<CR>
noremap <LEADER>qq<CR> :!q<CR>

set list
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nocompatible "make ancient plug works well on new vim
set relativenumber 
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
set visualbell
set smartcase
set laststatus=2
set autochdir
set ignorecase
set infercase

set listchars=tab:▸\ ,trail:▫

exec "nohlsearch"

map R :source $MYVIMRC<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical res +5<CR>
map <right> :vertical res -5<CR>
map tn :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
map <LEADER>d <C-w>H
map <LEADER>s <C-w>K
"NERDTree shortcut
map ff :NERDTree<CR>

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"=================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'connorholyday/vim-snazzy'

" File navigation
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Auto Complete
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

color snazzy
