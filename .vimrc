" Vim configuration

" Init {{{1
set nocompatible   " be iMproved
set encoding=utf-8 " character encoding
set t_Co=256       " best behavior when using temrinal
filetype off       " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" /Init }}}1
