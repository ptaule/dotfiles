set nocompatible " be iMproved, required
filetype off     " required

let g:polyglot_disabled = ['latex']
let g:polyglot_disabled = ['autoindent']

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'godlygeek/tabular'
Plug 'sheerun/vim-polyglot'
" Plug 'arcticicestudio/nord-vim'
Plug 'Raimondi/delimitMate'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'ntpeters/vim-better-whitespace'
Plug 'unblevable/quick-scope'
" Plug 'junegunn/vim-peekaboo'

" Plug 'beloglazov/vim-online-thesaurus'
" Plug 'Shougo/deoplete.nvim'
" Plug 'neomake/neomake'
" Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()

filetype plugin indent on
syntax on

autocmd filetype c,h,cpp,hpp colorscheme torte
autocmd filetype tex colorscheme torte
autocmd filetype python colorscheme default

" History/Undo settings
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
set wildignore+=*.acn,*.acr,*.alg,*.aux,*.auxlock,*.bbl
set wildignore+=*.bcf,*.blg,*.fdb_latexmk,*.fls*.glo,
set wildignore+=*.idn,*.idx,*.ilg,*.nlo,*.nls,*.out,*.toc
set wildignore+=*.pdf,*.png,*.jpeg
set wildignore+=*.o,*.prog,*.exe
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

set number
set relativenumber
set scrolloff=3
set ignorecase
set smartcase
set hlsearch
set incsearch
set gdefault

set tabstop=4
set shiftwidth=0
set expandtab
set smarttab
set backspace=indent,eol,start

set nrformats-=octal

" set clipboard=unnamed
set shortmess=a
set cmdheight=1

set updatetime=300

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
noremap <silent> <Space> :silent noh<Bar>echo<CR>
nnoremap <CR> o<Esc>
nnoremap <leader><leader> :wa<CR>

autocmd filetype tex nnoremap j gj
autocmd filetype tex nnoremap k gk

autocmd filetype cpp inoremap {<CR> {<CR>}<Esc>O
autocmd filetype c     let @p='ywoprintf("jkpa = %i\n", jkpa);jkk^'
autocmd filetype cpp   let @d='ywostd::cout << "jkpa= jkA << jkpjkA<< std::endl;jkk^'
autocmd filetype cpp   let @p='ywoprintf("jkpa = %i\n", jkpa);jkk^'
autocmd filetype julia let @p='ywoprintln("jkpa = $jkpa")jkk^'
autocmd filetype py    let @d='ywoprint ("jkpa= "jkA,jkpjkA)jkk0'
autocmd filetype cpp    nnoremap <leader>m :wa<CR> :!make -j run<CR>
autocmd filetype julia  nnoremap <leader>m :wa<CR> :!nice julia % <CR>
autocmd filetype python nnoremap <leader>m :wa<CR> :!nice python % <CR>
autocmd filetype sh     nnoremap <leader>m :wa<CR> :!./% <CR>
autocmd filetype form   nnoremap <leader>m :wa<CR> :!form -q -l % <CR>
autocmd filetype dosini nnoremap <leader>m :wa<CR> :!./class % <CR>

autocmd filetype dat :set nostartofline

"Vertical split
nnoremap <leader>w <C-w>v<C-w>l
"Horizontal split
"nnoremap <leader>h <C-w>s<C-w>l
nnoremap <leader>q <C-w>q
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Copy to end of line
nnoremap Y y$

" Copy to clipboard
nnoremap <leader>y  "+y
nnoremap <leader>yy  "+yy
vnoremap <leader>y  "+y

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
nnoremap <leader>cd :cd %:p:h<CR>
cmap :Q :q

" let g:deoplete#enable_at_startup = 1

" autocmd FileType tex let b:delimitMate_quotes = "\" ' $"

autocmd FileType julia,gnuplot,dat,dosini setlocal commentstring=#\ %s
autocmd FileType form setlocal commentstring=*\ %s
autocmd FileType mma setlocal commentstring=(*\ %s\ *)

" Syntax for .dat files
autocmd BufRead,BufNewFile *.dat set filetype=dat

nnoremap <leader>e :CtrlP<CR>

nnoremap <leader>x *``cgn

" lightline settings
set laststatus=2
set noshowmode
let g:lightline = {
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': ''
  \}

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Ultisnips settings
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
