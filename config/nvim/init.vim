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

colo falcon
