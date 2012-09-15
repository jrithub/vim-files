" Init {{{1
" -----------------------------------------------------------------------------
" No comment
"
	set nocompatible   " be iMproved
	set encoding=utf-8 " character encoding
	set t_Co=256       " best behavior when using temrinal
	filetype off       " required!
	"
	" start Vundle manager
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
"
" -----------------------------------------------------------------------------
" /Init }}}1

" Bundles {{{1
" -----------------------------------------------------------------------------
" Plugins found on github, vim.org or other repos.
"
	" github repositories
	Bundle 'gmarik/vundle'
	Bundle 'Lokaltog/vim-powerline'
	Bundle 'flazz/vim-colorschemes' 
	Bundle 'altercation/vim-colors-solarized' 
	Bundle 'ctrlp.vim'
	Bundle 'kien/tabman.vim'
	Bundle 'spf13/snipmate-snippets'
	Bundle 'spf13/vim-colors'
	Bundle 'spf13/PIV'
	Bundle 'scrooloose/nerdtree'

	" vim.org repositories
	Bundle 'ScrollColors'
"
" -----------------------------------------------------------------------------
" /Bundles}}}1

" Default {{{1
" -----------------------------------------------------------------------------
" We can't survive without it
"
	filetype on         " file type detection
	filetype plugin on  " load the ftplugin(s)
	filetype indent on  " load the indent file
	syntax enable       " switche on syntax highlighting
	set number          " print the line number in front of each line
	let mapleader = "," " quick and efficient mapleader

	set laststatus=2    " always a status line
	set cmdheight=2     " more space for commands line
"
" -----------------------------------------------------------------------------
" /Default }}}1

" Mappings {{{1
" -----------------------------------------------------------------------------
" Enhance your vim shui
"
	imap jj <Esc><silent>                " avoid the escape key

	nmap <leader>w :w<cr><silent>        " quick and efficient saving
	nmap <leader>s :source %<cr><silent> " source the current file

	nmap <C-h> <C-W>h                    " go to left window
	nmap <C-l> <C-W>l                    " go to right window
	nmap <C-k> <C-W>k                    " go to top window
	nmap <C-j> <C-W>j                    " go to bottom window
"
" -----------------------------------------------------------------------------
" Mappings }}}1

" Plugins {{{1
" -----------------------------------------------------------------------------
" Plugins configurtation
" 
	" Ctrlp {{{2
		nmap <C-p> :CtrlP<CR>
	" Ctrlp }}}2

	" NERDTree {{{2
		nmap <leader>n :NERDTreeToggle<cr> " toggle NERDTree

		"automatically change the current directory
		"http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
		"autocmd BufEnter * silent! lcd %:p:h
	" NERDTree }}}2
"
" -----------------------------------------------------------------------------
" Plugins }}}1

" Testarea {{{1
" -----------------------------------------------------------------------------
"
	"let g:Powerline_symbols = 'fancy'
	let g:Powerline_symbols = 'unicode'
"
" -----------------------------------------------------------------------------
" Testarea }}}1
