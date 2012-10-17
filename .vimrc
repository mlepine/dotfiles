runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set tabstop=4
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

noremap <silent> <Leader>f :NERDTreeToggle<CR>

autocmd VimEnter * NERDTree

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
	if exists("t:NERDTreeBufName")
		if bufwinnr(t:NERDTreeBufName) != -1
			if winnr("$") == 1
				q
			endif
		endif
	endif
endfunction

let g:notes_directory = '~/Documents/Notes'
