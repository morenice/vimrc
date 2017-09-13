version 7.0

set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set showmatch
set incsearch
set hlsearch
set autowrite
set title
set nu

set encoding=utf-8
set fileencodings=utf-8,euc-kr
set bg=dark

syntax on
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType php set tabstop=4|set shiftwidth=4|set expandtab

" Vim Plug configure
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'

" common develop plugin
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }

"" tip of find header
"$ ctags --extra=+f -R .
"Then in vim, you can just type :tag header.h to jump to header.h
"Use with ctrlp.vim
Plug 'kien/ctrlp.vim'
Plug 'msanders/snipmate.vim'
Plug 'majutsushi/tagbar'

" php
Plug 'stanangeloff/php.vim'

" python

" for writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-pencil'
call plug#end()


" plugin airline configure
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='molokai'

" vim color schema
colorscheme molokai

" tagbar configure
"let g:tagbar_autoclose = 1
autocmd VimEnter * nested :TagbarOpen

"" Register Key map
"
map <F10> :Goyo <bar> :Limelight!! <bar> :TogglePencil <CR>

"" PHP
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
