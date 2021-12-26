set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" Auto-closing for parens, quotes, etc
Plug 'jiangmiao/auto-pairs'
" Searching for file names
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Folder browser
Plug 'scrooloose/nerdtree'
" Wrap current line in a comment (command: gcc)
Plug 'tpope/vim-commentary'
" A bunch of pleasant fixes for general quirks
Plug 'tpope/vim-sensible'
" Easily surround code with, e.g., parens
Plug 'tpope/vim-surround'
" Code compilation and linting
Plug 'w0rp/ale'

" Language specific plugins

" Typescript
Plug 'leafgarland/typescript-vim'
" React
Plug 'mxw/vim-jsx'
" HTML auto-closing
Plug 'mattn/emmet-vim'

call plug#end()

filetype plugin on
filetype plugin indent on

" General
set tabstop=2
set shiftwidth=2
set modifiable
set expandtab
syntax enable
syntax on

" Timeout (reduce wait times for general events)
set timeoutlen=250

" Disable ex mode
nnoremap Q <nop>

" placeholder character color
highlight NonText ctermfg=0

" Highlighting unwanted spaces/tabs
highlight TabHighlight ctermbg=blue
highlight ExtraWhitespace ctermbg=lightblue
match TabHighlight /\t/
match ExtraWhitespace /\s\+$/

" Emmet settings (for easier HTML)
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" ALE Settings
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'kotlin': ['kotlinc'],
\} " don't forget `npm i -g typescript`

" FZF search with ctrl p
map <c-p> :FZF<CR>

" Draw a line in column 80 as a reminder to keep lines short when possible
:set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightblue

