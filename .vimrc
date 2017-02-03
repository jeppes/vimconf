set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'elmcast/elm-vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'neovimhaskell/haskell-vim'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace'
Plug 'udalov/kotlin-vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer' }

call plug#end()

filetype plugin on
filetype plugin indent on 

" General
set tabstop=2
set shiftwidth=2
set number
set relativenumber
set foldmethod=indent
set modifiable
set expandtab

syntax enable
syntax on

" Use 'jj' as 'esc'
:imap jj <Esc>

" CTRL-P ignore in searh path
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules,*/build,*/dist

" YouCompleteMe
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
let g:ycm_extra_conf_globlist = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Emmet settings
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Elm
let g:elm_format_autosave = 1

" Highlighting unwanted spaces/tabs
highlight TabHighlight ctermbg=blue
match TabHighlight /\t/

" Timeout
set timeoutlen=250

" Syntastic
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

