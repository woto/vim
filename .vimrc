set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'lukaszkorecki/CoffeeTags'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ggreer/the_silver_searcher'
Plugin 'mileszs/ack.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'nikvdp/ejs-syntax'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-bundler'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
"Plugin 'suan/vim-instant-markdown'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'ternjs/tern_for_vim'
Plugin 'easymotion/vim-easymotion'
""""""""""""""""""""""""""""""""""""""""""""""""""



"set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
"filetype on           " Enable filetype detection
"filetype indent on    " Enable filetype-specific indenting
"filetype plugin on    " Enable filetype-specific plugins

"execute pathogen#infect()


if has('gui_running')
    set background=light
    colorscheme solarized
else
    set background=dark
    colorscheme jellybeans
endif

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set tabstop=2      " An indentation every four columns
set softtabstop=2  " Let backspace delete indent
set shiftwidth=2
set expandtab
set autoindent

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

:let mapleader=","
set runtimepath^=~/.vim/bundle/ctrlp.vim

"if exists("g:ctrl_user_command")
"  unlet g:ctrlp_user_command
"endif

let g:ctrlp_custom_ignore = {
    \ 'dir':  'public\/uploads\|system\/submodules\|vendor',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

au BufRead,BufNewFile {*.god,*.thor,*.pill,*.axlsx} set ft=ruby

let g:ctrlp_max_files = 20000
let g:ctrlp_max_depth=5
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:100'
let g:ctrlp_working_path_mode = 0

"map <Leader>t :call RunCurrentSpecFile()<CR>
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>
"map <Leader>a :call RunAllSpecs()<CR>

set tags=./tags;

" Use ack instead of grep
"set grepprg=ack
let g:ackprg = 'ag --nogroup --nocolor --column'


:nnoremap <leader>d :Tagbar<CR>
:nnoremap <leader>q :tabnew<CR>
:nnoremap <leader>w :exec '!' . 'docker exec -it gdeslondocker_app_1 bash -l -c "spec ' . '%:.' . ':' . line('.') . '"'<CR>

" from 192.168.33.10
set grepprg=ack
set wildignore+=*/node_modules/*
set number

" Это такой рекомендуемый хак в частности для работы подсветки coffee
filetype off
filetype on

" vim-airline
set laststatus=2 
