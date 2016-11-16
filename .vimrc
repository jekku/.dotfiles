execute pathogen#infect()
syntax on
filetype plugin indent on

let g:airline_theme='base16_railscasts'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

set runtimepath^=~/.vim/bundle/ctrlp.vim

set listchars=eol:☯
set list
highlight NonText guifg=#4a4a59
set paste


let g:ctrlp_custom_ignore = 'node_modules'
let NERDTreeIgnore=['node_modules', '.git', 'bower_components', 'tmp', 'dist']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:NERDTreeShowHidden=1

