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

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'
Plugin 'udalov/kotlin-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'leafgarland/typescript-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'HerringtonDarkHolme/yats.vim'
Plugin 'clausreinke/typescript-tools.vim'
Plugin 'mattn/emmet-vim'
Plugin 'elmcast/elm-vim'
Plugin 'neovimhaskell/haskell-vim'

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
set modifiable
" set autoindent
set expandtab

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules
:imap jj <Esc>

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

" Emmet settings
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

filetype plugin on
filetype plugin indent on

" Elm
let g:elm_format_autosave = 1
