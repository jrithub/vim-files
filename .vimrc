" Init {{{1
" -----------------------------------------------------------------------------
set nocompatible   " be iMproved
set encoding=utf-8 " character encoding
set t_Co=256       " best behavior when using temrinal
filetype off       " required!

" start Vundle manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" -----------------------------------------------------------------------------
" /Init }}}1

" Bundles {{{1
" -----------------------------------------------------------------------------
" github repositories
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'flazz/vim-colorschemes' 

" vim.org repositories
Bundle 'ScrollColors'
" -----------------------------------------------------------------------------
" /Bundles}}}1

" Default {{{1
" -----------------------------------------------------------------------------
filetype on         " file type detection
filetype plugin on  " load the ftplugin(s)
filetype indent on  " load the indent file
syntax enable       " switche on syntax highlighting
set number          " print the line number in front of each line
let mapleader = "," " quick and efficient mapleader

set laststatus=2    " always a status line
set cmdheight=2     " more space for commands line
" -----------------------------------------------------------------------------
" /Default }}}1

" Mappings {{{1
" -----------------------------------------------------------------------------
imap jj <Esc><silent>                " avoid the escape key

nmap <leader>w :w<cr><silent>        " quick and efficient saving
nmap <leader>s :source %<cr><silent> " source the current file

nmap <C-h> <C-W>h                    " go to left window
nmap <C-l> <C-W>l                    " go to right window
nmap <C-k> <C-W>k                    " go to top window
nmap <C-j> <C-W>j                    " go to bottom window
" -----------------------------------------------------------------------------
" Mappings }}}1

" Testarea {{{1
" -----------------------------------------------------------------------------
"let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'
" -----------------------------------------------------------------------------
" Testarea }}}1
