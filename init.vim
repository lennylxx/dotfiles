call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'

Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
" Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'rhysd/vim-clang-format'

Plug 'tyrannicaltoucan/vim-deep-space'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/4.0.0_1/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header='/usr/local/Cellar/llvm/4.0.0_1/lib/clang'

" shortcut
map <C-K> :ClangFormat<cr>
imap <C-K> :ClangFormat<cr>

" reload init.vim changes immediately
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" color theme
" http://colorswat.ch/vim
set background=dark
set termguicolors
colorscheme deep-space
let g:airline_theme='deep_space'

" editor
set fenc=utf-8
set number " line number
set ruler
set cursorline " highlight current line
set colorcolumn=80 " display guideline
set laststatus=2
set scrolloff=3
"set undofile
"set wrap
set foldmethod=syntax
set nofoldenable
set visualbell
set mouse=a " use mouse
set clipboard=unnamedplus " access system clipboard
filetype plugin on

set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set list
