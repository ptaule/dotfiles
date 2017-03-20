set nocompatible " be iMproved, required
filetype off     " required

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'lervag/vimtex'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'ntpeters/vim-better-whitespace'

" Initialize plugin system
call plug#end()

filetype plugin indent on

" Neomake settings
autocmd! BufWritePost *.cpp,*.hpp,*.h Neomake
let g:neomake_cpp_enabled_makers = ['gcc']
let g:neomake_cpp_gcc_maker = {
            \ 'exe': 'g++',
            \ 'args': ['-Wall', '-Wextra', '-Wpedantic', '-Wno-sign-conversion', '-std=c++11'],
            \ }

" vim-airline settings
set laststatus=2
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Ultisnips settings
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

syntax on
colorscheme default
autocmd filetype tex colorscheme industry

"History/Undo settings
set history=1000
set undofile
set undodir=~/.vim/undo
set undolevels=1000 " How many undos
set undoreload=1000 " Number of lines to save for undo
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
set incsearch
set gdefault
set path+=**

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set backspace=indent,eol,start

set nrformats-=octal

" set clipboard=unnamed
set shortmess=a
set cmdheight=1

" Typos
ab heigth height
ab lenght length
ab widht width
ab teh the
ab fro for
autocmd filetype cpp ab enld endl
autocmd filetype tex ab farc frac

let mapleader = ","
let g:mapleader = ","

let g:tex_flavor = "latex"

"Escape
inoremap jk <Esc>
nnoremap j gj
nnoremap k gk
noremap <silent> <Space> :silent noh<Bar>echo<CR>
nnoremap <CR> o<Esc>
autocmd filetype cpp inoremap {<CR> {<CR>}<Esc>O
autocmd filetype cpp let @d='ywostd::cout << "jkpa= jkA << jkpjkA<< std::endl;jkk^'
autocmd filetype cpp let @p='ywoprintf("jkpa = %i\n", jkpa);jkk^'
autocmd filetype cpp nnoremap <leader>m :wa<CR> :!clear;make run<CR>
autocmd filetype py let @d='ywoprint ("jkpa= "jkA,jkpjkA)jkk0'
autocmd filetype tex let @v='i\vek{jkwea}jk'


"Vertical split
nnoremap <leader>w <C-w>v<C-w>l
"Horizontal split
"nnoremap <leader>h <C-w>s<C-w>l
nnoremap <leader>q <C-w>q
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Copy to clipboard
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
vnoremap  <leader>y  "+y

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

"source $MYVIMRC reloads the saved $MYVIMRC
nnoremap <Leader>s :source $MYVIMRC<CR>
"opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
nnoremap <Leader>v :e $MYVIMRC<CR>

vnoremap <leader>t :Tabularize /
" Search for visual selected text
vnoremap // y/<C-R>"<CR>

" Execute command on this line in shell
nnoremap Q !!sh<CR>

" Change working directory to this
cmap ctwd :cd %:p:h<CR>
