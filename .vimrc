set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'godlygeek/tabular'
Plugin 'sheerun/vim-polyglot'
Plugin 'Raimondi/delimitMate'
Plugin 'bronson/vim-trailing-whitespace'

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

"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_extra_conf_globlist = ['~/Dropbox/C++/*','~/Dropbox/NTNU/*']
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_filetype_whitelist = {'cpp' : 1,'c' : 1, 'python' : 1, 'tex' : 1}
"
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"nnoremap <leader>jd :YcmCompleter GoTo<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
"History/Undo settings
set history=1000
set undofile
set undodir=~/.vim/undo
set undolevels=1000         " How many undos
set undoreload=10000            " Number of lines to save for undo
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

set lazyredraw
set hidden

set wildmenu
set wildignorecase
set wildignore+=*.aux,*.out,*.toc,*.pdf
set wildignore+=*.dSYM/,*.png,*.jpeg,*.ind
set wildignore+=*.idx,*.log,*.idx,*.ilg,*.fls

set number
set relativenumber
set scrolloff=3
set ignorecase
set smartcase
set hlsearch

let g:tex_flavor = "latex"
syntax on
colorscheme darkblue
autocmd filetype tex colorscheme default
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

set clipboard=unnamed
set shortmess=a
set cmdheight=2

" skriveleifer
ab heigth height
ab lenght length
ab teh the "auto change 'teh' to 'the'
ab fro for "auto change 'fro' to 'for'

let mapleader = ","
let g:mapleader = ","

"Escape
inoremap jk <Esc>
nnoremap j gj
nnoremap k gk
noremap <silent> <Space> :silent noh<Bar>echo<CR>
autocmd filetype tex inoremap 77 \
autocmd filetype tex inoremap 88 {
autocmd filetype tex inoremap 99 }
nnoremap <CR> o<Esc>
autocmd filetype cpp inoremap {<CR> {<CR>}<Esc>O
autocmd filetype cpp let @d='ywostd::cout << "jkpa= jkA << jkpjkA<< std::endl;jkk0'

"Vertical split
nnoremap <leader>w <C-w>v<C-w>l
"Horizontal split
"nnoremap <leader>h <C-w>s<C-w>l
nnoremap <leader>q <C-w>q
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

"source $MYVIMRC reloads the saved $MYVIMRC
nnoremap <Leader>s :source $MYVIMRC<CR>
"opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
nnoremap <Leader>v :e $MYVIMRC<CR>

vnoremap <leader>t :Tabularize /

" Change working directory to this
cmap ctwd :cd %:p:h<CR>
