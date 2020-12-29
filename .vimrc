" User Interface
set number          " Show line numbers
syntax on           " Turn syntax highlighting on
set wildmenu        " Use wildmenu
set mouse=a
set noshowmode
set backspace=indent,eol,start
set termguicolors

" Turn off swap files
set noswapfile
set nobackup
set nowb

" Tab settings
set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set smartindent
set smarttab

" Search
set incsearch       " Show search results while searching
set hlsearch        " Highlight search results

" PLUG PLUGIN MANAGER

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'nightsense/carbonized'
Plug 'wadackel/vim-dogrun'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'itchyny/vim-gitbranch'

call plug#end()

"colorscheme carbonized-dark
colorscheme dogrun

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" NERDTree Configuration
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"

" Lightline Configuration (if used)
let g:lightline = {
        \  'colorscheme': 'dogrun',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'gitbranch#name'
        \ }
        \ }
