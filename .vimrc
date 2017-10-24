set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs' " Auto-closing for parens, quotes, etc
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Searching for file names
Plug 'junegunn/goyo.vim' " Distraction free mode
Plug 'junegunn/limelight.vim' " Lighting in distraction free mode
Plug 'scrooloose/nerdtree' " File browser
Plug 'tpope/vim-commentary' " Commenting-out code
Plug 'tpope/vim-sensible' " A bunch of pleasant fixes for general quirks
Plug 'tpope/vim-surround' " Quickly chaning surrounding characters
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer' } " Code completion in many languages, see git for install instructions
Plug 'w0rp/ale' " Code compilation and linting
Plug 'mattn/emmet-vim' " Significantly faster way of writing HTML

" Language specific plugins
Plug 'neovimhaskell/haskell-vim'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'

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

" Timeout (reduce wait times for general events)
set timeoutlen=250

" Disable ex mode
nnoremap Q <nop>

" Use 'jj' as alternative to 'esc'
:imap jj <Esc>

" Draw a line in column 80 as a reminder to keep lines short when possible
:set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightblue

" placeholder character color
highlight NonText ctermfg=0

" Highlighting unwanted spaces/tabs
highlight TabHighlight ctermbg=blue
highlight ExtraWhitespace ctermbg=lightblue
match TabHighlight /\t/
match ExtraWhitespace /\s\+$/

" YouCompleteMe
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_extra_conf_globlist = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_semantic_triggers['typescript'] = ['.']

" Emmet settings (for easier HTML)
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" ALE Settings
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'haskell': ['ghc'],
\   'c++': ['g++'],
\   'java': ['checkstyle', 'javac'],
\   'kotlin': ['kotlinc'],
\} " don't forget `npm i -g typescript`

" FZF search with ctrl p
map <c-p> :FZF<CR>

" Goyo with ctrl o (distraction free mode)
" Also toggles limelight
map <c-o> :Goyo<CR>:Limelight!!<CR>

" Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = '240'
map <c-l> :Limelight!!<CR>
