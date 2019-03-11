set termguicolors

set cursorline
set cursorcolumn

set mouse-=a

hi CursorLine cterm=reverse
hi CursorColumn cterm=reverse
hi Search cterm=reverse ctermbg=NONE
hi Visual cterm=reverse ctermbg=NONE

au FileType markdown set shiftwidth=2 tabstop=2 expandtab autoindent
au FileType sh set shiftwidth=2 tabstop=2 expandtab autoindent
au FileType yaml set shiftwidth=2 tabstop=2 expandtab autoindent

call plug#begin()
Plug 'fenetikm/falcon'
Plug 'dankneon/vim'
call plug#end()

colo falcon
