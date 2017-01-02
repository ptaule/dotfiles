set nocompatible " be iMproved, required
filetype off     " required

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
"Plug 'Valloric/YouCompleteMe'
Plug 'godlygeek/tabular'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'

" Initialize plugin system
call plug#end()

" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" let g:ycm_extra_conf_globlist = ['~/Dropbox/C++/*','~/Dropbox/NTNU/*']
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_filetype_whitelist = {'cpp' : 1,'c' : 1, 'python' : 1, 'tex' : 1}

" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Ultisnips settings
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

let g:tex_flavor = "latex"
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
set cmdheight=2

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

"Escape
inoremap jk <Esc>
nnoremap j gj
nnoremap k gk
noremap <silent> <Space> :silent noh<Bar>echo<CR>
nnoremap <CR> o<Esc>
autocmd filetype cpp inoremap {<CR> {<CR>}<Esc>O
autocmd filetype cpp let @d='ywostd::cout << "jkpa= jkA << jkpjkA<< std::endl;jkk0'
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
