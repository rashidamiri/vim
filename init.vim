set nocompatible
set title
set hlsearch
set ruler
set number
set mouse=a
set noerrorbells
set novisualbell
set belloff=all
set spell spelllang=en_us
set autoindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

call plug#begin("~/.config/nvim/plugged")
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/preservim/nerdtree' 
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal

set encoding=UTF-8

call plug#end()

nmap ne :NERDTreeToggle<CR>

" Setting colorscheme
colorscheme purify
