set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins "call
" vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported. " Keep Plugin
" commands between vundle#begin/end.
" " plugin on GitHub repo

" Plugin 'tpope/vim­surround' 
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'leafgarland/typescript-vim'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line 
call vundle#end() " required
filetype plugin indent on " required
" " To ignore plugin indent changes, instead use:
"filetype plugin on "
" Brief help
" :PluginList ­ lists configured plugins
" :PluginInstall ­ installs plugins; append `!` to update or just
":PluginUpdate
" :PluginSearch foo ­ searches for foo; append `!` to refresh local cache
" :PluginClean ­ confirms removal of unused plugins; append `!` to
" auto­approve removal "
" see :h vundle for more details or wiki for FAQ
" Put your non­Plugin stuff after this line
" size of a hard tabstop 
set tabstop=4
" "
" " " size of an "indent"
set shiftwidth=4
" "
syntax enable
syntax on
set number
set relativenumber
set foldmethod=indent
