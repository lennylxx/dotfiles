call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'Shougo/neoinclude.vim'
Plug 'rhysd/vim-clang-format'
Plug 'tyrannicaltoucan/vim-deep-space'

call plug#end()

"let g:deoplete#enable_at_startup = 1

" shortcut
map <C-K> :ClangFormat<cr>
imap <C-K> :ClangFormat<cr>

" color theme
" http://colorswat.ch/vim
set background=dark
set termguicolors
colorscheme deep-space
let g:airline_theme='deep_space'

" editor
set fenc=utf-8
set number
set ruler
set cursorline
set colorcolumn=80
set laststatus=2
set scrolloff=3
"set undofile
"set wrap
set foldmethod=syntax
set nofoldenable

set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list
