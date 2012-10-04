" enable pathogen
call pathogen#infect()
syntax on
" enable syntax highlighting
syntax on 
" use the `solarized` colorscheme
colorscheme solarized
" and make it use the dark background
set background=dark
" enable a ruler at the bottom of the screen
set ruler
" enable commandline completion when in command mode
set wildmenu
" use 2 chars whitespace for tabs and use proper tabs
set noexpandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" enable loading the indent file for specific file types
filetype plugin indent on
" don't wrap long lines
set nowrap
" enable autoindenting
set autoindent
" hightlight the line the cursor is on
set cursorline
" show invisibles
set list
" use ▸ followed by spaces to show tabs, use ¬ for end of line characters
set listchars=tab:▸\ ,eol:¬
" use the solarized 256 colorscheme
let g:solarized_termcolors=256
" use relative line numbers by default
set relativenumber
" toggle between relative and absolute line numbers
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc
" map Ctrl-C to toggle between relative and absolute line numbers
nnoremap <C-n> :call NumberToggle()<cr>
