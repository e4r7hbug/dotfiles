call plug#begin('~/.local/share/nvim/plugged')

Plug 'DankNeon/vim'
Plug 'fenetikm/falcon'

call plug#end()

set termguicolors

set mouse-=a

set cursorline
set cursorcolumn
hi CursorLine cterm=reverse
hi CursorColumn cterm=reverse

hi Search cterm=reverse ctermbg=NONE
hi Visual cterm=reverse ctermbg=NONE

au FileType groovy set shiftwidth=4 tabstop=4
au FileType markdown set shiftwidth=2 tabstop=2
au FileType sh set shiftwidth=2 tabstop=2
au FileType yaml set shiftwidth=2 tabstop=2

set expandtab autoindent

"set background=light
let g:falcon_background = 0
let g:falcon_inactive = 1
colorscheme falcon

let g:loaded_node_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_python_provider = 0
let g:loaded_ruby_provider = 0
