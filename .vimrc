set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'

call vundle#end()
filetype plugin indent on

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on
set guifont=Monospace\ 12
"set lines=40
"set columns=80
set mouse=a
set nu
set tabstop=4
set softtabstop=4
set autoindent
set cindent
set expandtab
set shiftwidth=4
set t_Co=256
set background=dark
"let g:molokai_original=1
colorscheme molokai
"autocmd BufNewFile,BufRead * :syntax match cfunction "\<[a-zA-z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
"autocmd BufNewFile,BufRead * :syntax match cfunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
"hi cfunctions ctermfg=81
"hi Type ctermfg=118 cterm=none
"hi Structure ctermfg=118 cterm=none
"hi Macro ctermfg=161 cterm=bold
"hi PreCondit ctermfg=161 cterm=bold
set cursorline
set shellslash
set grepprg=grep\ -nH\ $*

let g:airline_detect_paste=1
let airline#extensions#tabline#enabled = 1

let g:nerdtree_tabs_open_on_console_startup = 0

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END
let g:tex_flavor='latex'

let mapleader=";"
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_confirm_extra_conf=0
"let g:ycm_collect_identifiers_from_tag_files=1
