set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

execute pathogen#infect()

color jellybeans

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set tabstop=2      " An indentation every four columns
set softtabstop=2  " Let backspace delete indent
set shiftwidth=2
set expandtab
set autoindent

:let mapleader=","
set runtimepath^=~/.vim/bundle/ctrlp.vim

"if exists("g:ctrl_user_command")
"  unlet g:ctrlp_user_command
"endif

let g:ctrlp_custom_ignore = {
    \ 'dir':  'public\/uploads\|system\/submodules\|vendor',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

au BufRead,BufNewFile {*.god,*.thor,*.pill,*.axlsx} set ft=ruby

let g:ctrlp_max_files = 10000
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:100'

let g:ackprg = 'ag --nogroup --nocolor --column'

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

set tags=./tags;

" Use ack instead of grep
"set grepprg=ack
let g:ackprg = 'ag --vimgrep'

:nnoremap <leader>d :Tagbar<CR>
:nnoremap <leader>q :tabnew<CR>
:nnoremap <leader>w :exec '!' . 'docker exec -it gdeslondocker_app_1 bash -l -c "spec ' . '%:.' . ':' . line('.') . '"'<CR>
