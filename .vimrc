call plug#begin()
" sensible defaults
Plug 'tpope/vim-sensible'

" pulling in colorschemes
Plug 'flazz/vim-colorschemes'

" for javascript editing (but not exclusively)
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'

" miscellaneous development plugins
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/syntastic'

" for vim-orgmode
Plug 'tpope/vim-speeddating'

" command-t
Plug 'wincent/command-t'
call plug#end()

set t_Co=256
set background=dark
colorscheme distinguished

imap <C-CR> <CR><Esc>O

set hlsearch

" This does what it says on the tin. It will check your file on open too, not
" just on save.
" " You might not want this, so just leave it out if you don't.
" let g:syntastic_check_on_open=1

" syntastic errors to ignore.
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-", " proprietary attribute \"ui-sortable\""]

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
