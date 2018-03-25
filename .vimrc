start
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'miyakogi/conoline.vim'
Plugin 'delimitMate.vim'
call vundle#end()
filetype plugin indent on
:map ; :
syntax enable
filetype indent on
set number
:set autoindent
:set smartindent
autocmd FileType c call IoStream()
fu! IoStream()
    if line("$") == 1
        call append(0, "#include <stdio.h>")
	call append(1 , "#include <stdlib.h>")
    endif
endfu
set noswapfile
:set tabstop=4
:set shiftwidth=4
:set expandtab
