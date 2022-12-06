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

let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

syntax on
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''
autocmd FileType c set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType cpp set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType go set tabstop=4
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType json set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType yaml set tabstop=2|set shiftwidth=2|set expandtab

" Vim Plug configure
call plug#begin('~/.vim/plugged')

" common develop plugin
Plug 'bling/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'airblade/vim-gitgutter'
Plug 'benmills/vimux'
"" tip of find header
"$ ctags --extra=+f -R .
"Then in vim, you can just type :tag header.h to jump to header.h
"Use with ctrlp.vim
Plug 'kien/ctrlp.vim'


" programming language
Plug 'msanders/snipmate.vim'
Plug 'w0rp/ale'                 " linting
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


" devops
Plug 'pearofducks/ansible-vim'
Plug 'ekalinin/dockerfile.vim'


" writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-pencil'
call plug#end()


" plugin airline configure
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" vim color schema
colorscheme molokai

" tagbar configure
"let g:tagbar_autoclose = 1
"let g:tagbar_autofocus = 1
autocmd VimEnter * nested :TagbarOpen

"" Register Key map
"
map <F8> :NERDTreeFind <CR>
map <F10> :Goyo <bar> :Limelight!! <bar> :TogglePencil <CR>
