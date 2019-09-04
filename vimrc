let mapleader=" "
syntax on
set showcmd
set tabstop=4
set wildmenu
set number
set cursorline
set wrap
set hlsearch
set incsearch
set smartcase
"set ignorecase
set expandtab
set autoindent
set smartindent


"map o <nop>
map O <nop>
map s <nop>
map W :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
"map <M> <ESC>
map ; :

map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

map <leader>i <C-w>k
map <leader>k <C-w>j
map <leader>j <C-w>h
map <leader>l <C-w>l
map oi :res+5<CR>
map ok :res-5<CR>
map oj :vertical resize-5<CR>
map ol :vertical resize+5<CR>
map tu :tabe<CR>
map tj :-tabnext<CR>
map tk :+tabnext<CR>
map sh <C-w>t<C-w>H
map sn <C-w>t<C-w>K
map mn :n<CR>



noremap H 5h
noremap L 5l
noremap j j
noremap k k
noremap K 5k
noremap J 5j
noremap - Nzz
noremap = nzz

"inoremap <space><space> <ESC>


filetype plugin indent on
filetype on
"补全双引号
inoremap "" "" <++><Esc>F"i
inoremap '' '' <++><Esc>F'i
inoremap << <> <++><Esc>F>i
inoremap (( () <++><Esc>F)i
inoremap {{ {} <++><Esc>F}i


source ~/.vim/mdrc.vim
source ~/.vim/vim-table-mode.vim

"call plug#begin('~/.vim/plugged')
"
"plug 'vim-airline/vim-airline'
"plug 'connorholyday/vim-snazzy'
"
"call plug#end()

"set mouse=a
"set encoding=utf-8
"set &t_ut=''
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set list
"set scrolloff=5
"set tw=0
"set indentexpr=
"set backspace=indent,eol,start
"set foldmethod=indent
"set foldlevel=99
"set &t_SI = "\<ESC>]50;CursorShape=1\x7"
"set &t_SR = "\<ESC>]50;CursorShape=2\x7"
"set &t_SI = "\<ESC>]50;CursorShape=0\x7"
"au BufReadPost * if line("'\'") > 1 && line("'\'") <= line("$") | exe "normal! g'\"" | endif

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

Plug 'scrooloose/nerdtree'

"Plug 'ycm-core/YouCompleteMe'

Plug 'dense-analysis/ale'

Plug 'majutsushi/tagbar'

Plug 'mbbill/undotree'

Plug 'iamcco/markdown-preview.nvim',{ 'do' :{ -> mkdp#util#install_sync() } , 'for' :['markdown','vim-plug'] }

call plug#end()

"color snazzy 
"let g:SnazzyTransparent=1
"let g:lightline = { 'colorscheme': 'snazzy',}




" === 
" === nerdtree
" ===
map tt :NERDTreeToggle<CR>


" ===
" ===  undotree
" ===
let g:undotree_DiffAutoOpen = 0
map T :UndotreeToggle<CR>


" ===
" === YouCompleteMe
" ===
"nnoremap gd :YcmCompleteMe GoToDefinitionElseDeclaration<CR>
"nnoremap g/ :YcmCompleteMe GetDoc<CR>
"nnoremap gt :YcmCompleteMe GetType<CR> 
"nnoremap gr :YcmCompleteMe GoToReferences<CR>
"let g:ycm_autoclose_preview_window_after_completion=0
"let g:ycm_autoclose_preview_window_after_insertion=1
"let g:ycm_use_clangd=0
"let g:ycm_python_interrupt_path = "";
"let g:ycm_python_binary_path = "";

