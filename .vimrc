runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set hidden
set wildmenu
set wildmode=list:longest
set title
set ignorecase
set smartcase
set ruler
set hlsearch
set incsearch

let mapleader = ","

let g:notes_directory = '~/Documents/Notes'
colorscheme molokai
set colorcolumn=80
