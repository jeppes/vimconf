set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'mattn/emmet-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
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

" Disable ex mode
nnoremap Q <nop>

" Use 'jj' as 'esc'
:imap jj <Esc>

" YouCompleteMe
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_extra_conf_globlist = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Emmet settings
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Highlighting unwanted spaces/tabs
highlight TabHighlight ctermbg=blue
highlight ExtraWhitespace ctermbg=lightblue
match TabHighlight /\t/
match ExtraWhitespace /\s\+$/

" Timeout
set timeoutlen=250

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
let g:syntastic_javascript_checkers = ['eslint']

" FZF search with ctrl p
map <c-p> :FZF<CR>

" Goyo with ctrl o
map <c-o> :Goyo<CR>

