" use utf-8 without BOM
set encoding=utf-8 nobomb
" enable pathogen
call pathogen#infect()
" Make Vim more useful
set nocompatible
" enable syntax highlighting
syntax on
" use the `solarized` colorscheme
colorscheme solarized
" and make it use the dark background
set background=dark
" enable a ruler at the bottom of the screen
set ruler
" always display the status line
set statusline=2
" enable commandline completion when in command mode
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" use 2 chars whitespace for tabs
set tabstop=2
set softtabstop=2
" use proper tabs
set noexpandtab
" enable loading the indent file for specific file types
filetype plugin indent on
" how many colums >> and << indent
set shiftwidth=2
" indent by multiples of shiftwidth
set shiftround
" don't wrap long lines
set nowrap
" enable autoindenting
set autoindent
" hightlight the line the cursor is on
set cursorline
" show invisibles
set list
" use ▸ followed by spaces to show tabs, use ¬ for end of line characters
set listchars=tab:⇥\ ,eol:¬,nbsp:_,trail:•
" use the solarized 256 colorscheme
let g:solarized_termcolors=256
" use line numbers
set number
" use relative line numbers by default if possible
if exists("&relativenumber")
	set relativenumber
endif
" start scrolling 4 lines before hitting the bottom of the screen
set scrolloff=4
" Show commands as they are typed
set showcmd
" Show the current mode
set showmode
" Don't show the intro message when starting Vim
set shortmess=atI
" Automatic commands
if has("autocmd")
" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Remove trailing whitespace before saving
	autocmd BufWritePre * :%s/\s\+$//e
	" Override automatic comment insertion on enter in insert mode and when
	" using o/O in command mode
	autocmd FileType * set formatoptions-=r formatoptions-=o
	if exists("&relativenumber")
		autocmd BufReadPost * set relativenumber
	endif
endif
" enable per-directory .vimrc files
set exrc
" disable unsafe commands in per-directory .vimrc files
set secure
