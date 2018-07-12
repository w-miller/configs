"setlocal spell spelllang=en_gb
" Set color scheme
colorscheme elflord
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Enable syntax highlighting
syntax on
" Enable line numbering
set number
" Enable ruler
set ruler
set rtp+=/Users/Will/.opam/system/share/ocp-index/vim
call plug#begin()
Plug 'rgrinberg/vim-ocaml'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
call plug#end()
" let g:vim_markdown_folding_disabled = 1
"
map <F2> :w<CR> :!ocamlc % && ocaml %<CR>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

set backspace=2

let g:livepreview_previewer = 'open -a Preview'

set modeline
