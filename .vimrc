" User Interface
set number          " Show line numbers
syntax on           " Turn syntax highlighting on
set wildmenu        " Use wildmenu
set ruler           " Show where cursor is
set mouse=a
set noshowmode
set backspace=indent,eol,start
set notermguicolors
set cmdheight=1     " Height of the cmdline area
set showmatch       " Show brackets when text indicator is over them
set mat=2
set background=dark
set hidden

" Intergrate system clipboard (needs xclip or similar)
set clipboard+=unnamedplus

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
    endif

set autoread        " Show new content when editted from outside
au FocusGained,BufEnter * checktime

" Turn off swap files (cause I use git)
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
set encoding=utf8

" Search
set incsearch       " Show search results while searching
set hlsearch        " Highlight search results

highlight Search ctermfg=0

set wildignore=*.o,*~,*.pyc 
if has("win16") || has("win32")
            set wildignore+=.git\*,.hg\*,.svn\*
else
                set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'

call plug#end()

" Colorscheme

try
        " colorscheme carbonized-dark (alternative colorscheme)
        " colorscheme dogrun
catch
endtry

" PLUGIN CONFIGUATION

" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" NERDTree Configuration
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let NERDTreeIgnore = ['^node_modules$']
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let NERDTreeGitStatusNodeColorization = 1

let g:lightline = {
        \ 'colorscheme': 'frontenddelight',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'gitbranch#name'
        \ }
        \ }

set guifont=SourceCodePro\ Font:h20

function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
        inoremap <silent><expr> <c-space> coc#refresh()
else
        inoremap <silent><expr> <c-@> coc#refresh()
endif

" Neovide specific settings
if exists('g:neovide')
  colorscheme frontend-delight 
  
  " Tab support
  set showtabline=2
  map <F9> :tabprevious<cr>
  map <F10> :tabnext<cr>
  map ,t :tabnew<cr>
endif

