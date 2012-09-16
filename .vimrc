"~/.vimrc
" vim:set ft=vim et tw=78
"
" Init {{{1
" -----------------------------------------------------------------------------
" No comment.
"
    set nocompatible   " be iMproved
    set encoding=utf-8 " character encoding
    set t_Co=256       " best behavior when using temrinal
    filetype off       " required!

    " start Vundle manager
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
"
" -----------------------------------------------------------------------------
" /Init }}}1

" Bundles {{{1
" -----------------------------------------------------------------------------
" Plugins found on github, vim.org or other repos.
" Run :BundleInstall to install theme.
" Run :BundleClean to delete theme after commenting or deleting the plugin
" call into the .vimrc file.
"
    " Github repositories {{{2
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
        Bundle 'Townk/vim-autoclose'
        Bundle 'tpope/vim-surround' 
        Bundle 'scrooloose/nerdcommenter'
        " Bundle 'tomtom/tcomment_vim'
        Bundle 'Lokaltog/vim-easymotion' 
        Bundle 'tristen/vim-sparkup'
        Bundle 'mileszs/ack.vim'
        Bundle 'majutsushi/tagbar'
        Bundle 'godlygeek/tabular'
        Bundle 'xolox/vim-session'
        Bundle 'tpope/vim-speeddating'
        Bundle 'tpope/vim-commentary'
        Bundle 'tpope/vim-repeat'
        Bundle 'tpope/vim-abolish'
        Bundle 'tpope/vim-ragtag'
        Bundle 'Shougo/neocomplcache'
    " /Github repositories }}}2

    " Vim.org repositories }}}2
        Bundle 'ScrollColors'
        " Bundle 'AutoTag'
        Bundle 'projtags.vim'
        Bundle 'ZoomWin'
        Bundle 'matchit.zip'
    " /Github repositories }}}2
"
" -----------------------------------------------------------------------------
" /Bundles}}}1

" Default {{{1
" -----------------------------------------------------------------------------
" We can't survive without it.
"
    filetype on            " file type detection
    filetype plugin on     " load the ftplugin(s)
    filetype indent on     " load the indent file
    syntax enable          " switche on syntax highlighting
    set nolist             " enable/disable list mode
    let mapleader = ","    " quick and efficient mapleader

    colorscheme solarized  " current colorscheme

    set number             " print the line number in front of each line
    set laststatus=2       " always a status line
    set cmdheight=2        " more space for commands line
    set cursorline         " enable cursorline

    set history=1000       " default is 20
    set showmatch          " briefly jump to the matching bracket
    set mat=2              " tenths of a second to show the matching bracket
    set scrolljump=3       " min. lines to scroll when the cursor gets off the screen
    set scrolloff=2        " min. screenlines to keep above and below the cursor
    "set mouse=a           " enable the mouse in all 4 modes

    set completeopt=menuone,longest " completion pum style
    set pumheight=15                " completion pum height
"
" -----------------------------------------------------------------------------
" /Default }}}1

" Indenting {{{1
" -----------------------------------------------------------------------------
" We are indent control freaks.
"
    set expandtab     " use spaces instead of tab
    set tabstop=4     " width of a tab character
    set softtabstop=4 " withe spaces to be inserted
    set shiftwidth=4  " amount of withe space(s) to be removed with indent cmd
    set smartindent   " copy the indentation from the previous line
    set autoindent    " automatically inserts one extra level of indentation

    set fillchars=vert:│,fold:┄,diff:╱
    set listchars=tab:.\ ,trail:.,eol:¬,precedes:◂,extends:▸
"
" -----------------------------------------------------------------------------
" /Indenting }}}1

" Folding {{{1
" -----------------------------------------------------------------------------
" Enhance your vim shui.
"
    set foldenable
    set foldcolumn=3
    set foldmethod=marker
"
" -----------------------------------------------------------------------------
" /Folding }}}1

" Mappings {{{1
" -----------------------------------------------------------------------------
" Enhance your vim shui.
"
    imap jj <Esc><silent>                 " avoid the escape key

    nmap <leader>w :w<cr><silent>         " quick and efficient saving
    nmap <leader>s :source %<cr><silent>  " source the current file

    nmap <C-h> <C-W>h                     " go to left window
    nmap <C-l> <C-W>l                     " go to right window
    nmap <C-k> <C-W>k                     " go to top window
    nmap <C-j> <C-W>j                     " go to bottom window

    nmap <silent><leader>l :set list!<cr> " toggle list (special characters)
"
" -----------------------------------------------------------------------------
" Mappings }}}1

" Plugins {{{1
" -----------------------------------------------------------------------------
" Plugins configurtation.
" 
    " Ctrlp {{{2
        nmap <C-p> :CtrlP<CR> " toggle Ctrlp
    " Ctrlp }}}2

    " NERDTree {{{2
        nmap <leader>n :NERDTreeToggle<cr> " toggle NERDTree
        "automatically change the current directory
        "http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
        "autocmd BufEnter * silent! lcd %:p:h
    " NERDTree }}}2

    " Easy-tags {{{2
        let g:easytags_file = '~/.vim/tags'
    " Easy-tags }}}2
"
" -----------------------------------------------------------------------------
" Plugins }}}1

" Testarea {{{1
" -----------------------------------------------------------------------------
" Always test things!
"
    "let g:Powerline_symbols = 'fancy'
    let g:Powerline_symbols = 'unicode'
    set tags+=tags;
    nmap <leader>e :tabnew $MYVIMRC<cr>

    " the CR key will simply select the highlighted menu item, just as <C-Y> does
    inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
" -----------------------------------------------------------------------------
" Testarea }}}1
