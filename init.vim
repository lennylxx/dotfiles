call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
" Plug 'weynhamz/vim-plugin-minibufexpl'
" Plug 'bling/vim-bufferline'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'

Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
" Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'rhysd/vim-clang-format'
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'flazz/vim-colorschemes'

call plug#end()

let g:deoplete#enable_at_startup = 1
if has('unix')
    let s:uname = system('uname -s')
    if s:uname == "Darwin\n"
        let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/4.0.0_1/lib/libclang.dylib'
        let g:deoplete#sources#clang#clang_header='/usr/local/Cellar/llvm/4.0.0_1/lib/clang'
    else
        let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-4.0/lib/libclang.so.1'
        let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-4.0/include'
    endif
endif

" shortcut
map <C-K> :ClangFormat<cr>
imap <C-K> :ClangFormat<cr>
nmap <F8> :TagbarToggle<cr>
nmap <C-P> :FZF<cr>

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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

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
