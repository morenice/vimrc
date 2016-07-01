version 7.0
set autoindent
set cindent
set smartindent

set encoding=utf-8
set fileencodings=utf-8,euc-kr

set nu
set hlsearch
set tags+=./tags,../tags,../../tags,../../../tags
set bg=dark

set cino=>4
set noexpandtab
set tabstop=4
set shiftwidth=4

syntax on

" for remove blank
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''

" for python
autocmd FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4


"""" vundle configure...
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
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

Plugin 'vim-airline/vim-airline'
Plugin 'tomasr/molokai'

Plugin 'The-NERD-Tree'
Plugin 'ctrlp.vim'
Plugin 'taglist.vim'
Plugin 'snipMate'

Plugin 'klen/python-mode'

" plugin airline configure
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1

" vim color schema
colorscheme molokai

" taglist configure
let Tlist_Auto_Open=1
let Tlist_Use_Right_Window=1
let Tlist_Exit_OnlyWindow=1


" pymode configure
let g:pymode = 1
let g:pymode_indent = 1

let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1

let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1

let g:pymode_syntax_all = 1
