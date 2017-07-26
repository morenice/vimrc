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

" Vundle configure
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
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}


"" All of your Plugins must be added before the following line
"
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'

" common develop plugin
Plugin 'taglist.vim'
Plugin 'The-NERD-Tree'
Plugin 'snipMate'
Plugin 'ctrlp.vim'
Plugin 'airblade/vim-gitgutter'

" for writing
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'reedes/vim-pencil'

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


"" plugin configurations
"

" plugin airline configure
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='molokai'

" vim color schema
colorscheme molokai

" taglist configure
let Tlist_Auto_Open=1
let Tlist_Use_Right_Window=1
let Tlist_Exit_OnlyWindow=1


"" Register Key map
"
map <F10> :Goyo <bar> :Limelight!! <bar> :TogglePencil <CR>

