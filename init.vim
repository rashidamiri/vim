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
set relativenumber
set nowrap

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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'Exafunction/codeium.vim'
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
" or                                , { 'branch': '0.1.x' }
set encoding=UTF-8

call plug#end()

nmap ne :NERDTreeToggle<CR>

" Setting colorscheme
colorscheme purify

" Use <CR> to accept completion when the suggestion menu is visible
" and fallback to inserting a newline otherwise.
inoremap <expr> <CR> pumvisible() ? coc#pum#confirm() : "\<CR>"

" (Optional) Use <C-y> to confirm completion, insert a newline otherwise
inoremap <expr> <C-y> pumvisible() ? coc#pum#confirm() : "\<C-y>"

