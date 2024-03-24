set nocompatible
" filetype plugin indent on
filetype off
set title

" vundle runtime
" Vundle git repo https://github.com/VundleVim/Vundle.vim

" call vundle
call vundle#begin()

" vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-surround' " Helps to work with brackets, qoutes, and so on
Plugin 'tpope/vim-fugitive' " Enables Git command from Vim terminal. G is capital in Git
Plugin 'xuyuanp/nerdtree-git-plugin' " visuals for nerdtree for git
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " dependency for nerdtree-git-plugin
Plugin 'dense-analysis/ale'
"Plugin 'ycm-core/YouCompleteMe' " Need compilation, cd to the plugin dir and run: python3 install.py --all to compile it. You may also need to build vim from source https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source

" Plugin 'ctrlpvim/ctrlp.vim'
" for tagbar to work you should install universal-ctags with brew or apt
" Plugin 'majutsuchi/tagbar'

" end vundle
call vundle#end()
filetype plugin indent on


" core parameters
syntax on
set hlsearch
set ruler
set number
set relativenumber
set mouse=a
set noerrorbells
set novisualbell
set belloff=all
set spell spelllang=en_us
" set noswapfile
" set nobackup
autocmd VimEnter * NERDTree | wincmd p
nmap ne :NERDTreeToggle<CR> " To open NerdTree toggle with ne
" autoIndenting
set autoindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

" ALE for python
let g:ale_linters = {
    \   'python': ['pylint'],
    \}

let g:ale_fixers = {
    \   'python': ['isort', 'autopep8'],
    \}
let g:ale_fix_on_save = 1

" Set up key bindings for ALE
nnoremap <silent> <leader>al :ALELint<CR>
nnoremap <silent> <leader>af :ALEFix<CR>


