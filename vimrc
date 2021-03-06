set shell=bash

set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'dodie/vim-disapprove-deep-indentation'
"Plugin 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on

set laststatus=2
silent! colorscheme solarized
let g:airline_theme = 'serene'

hi CursorLine cterm=inverse
set cc=80
set cursorline
set timeoutlen=50

"Syntastic things
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:LookOfDisapprovalSpaceTreshold=16
let g:LookOfDisapprovalTabTreshold=2

" Override settings
set modeline modelines=1

set backspace=indent,eol,start
