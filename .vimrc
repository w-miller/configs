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

if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
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

set backspace=2

let g:livepreview_previewer = 'open -a Preview'

set modeline

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
