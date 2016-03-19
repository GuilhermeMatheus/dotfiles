set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

command Tt set softtabstop=2
command T set softtabstop=4
map <F2> :NERDTreeToggle<CR>
map <C-p> :CtrlP
map <C-a> :bn<CR>
map <C-z> :bp<CR>

autocmd FileReadPre,BufReadPre *zeus/Gruntfile.js set shiftwidth=2 softtabstop=2
autocmd FileType clojure set shiftwidth=2 softtabstop=2
autocmd BufWinEnter * NERDTreeMirror

execute pathogen#infect()
call pathogen#helptags()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath+=~/.vim/bundle/tcomment
set runtimepath+=~/.vim/bundle/ag
set runtimepath+=~/.vim/bundle/surround
set runtimepath+=~/.vim/bundle/auto-save

let g:ctrlp_working_path_mode = 0
let g:auto_save = 1
set wildignore+=*/bower_components/**
set wildignore+=*/node_modules/**

set tags+=./.git/tags;

set modifiable