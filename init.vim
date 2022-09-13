set number
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set noshowmode
set laststatus=2
set termguicolors

call plug#begin('~/.config/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'dense-analysis/ale'
Plug 'sbdchd/neoformat'

call plug#end()

"key bindings
map <C-f> :Neoformat<CR>
map <C-s> :Neoformat <CR> :w <CR>
map <C-e> :x<CR>

"lightline"
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              ['filetype'] ]
      \ },
      \ }

colorscheme dracula

"ale

let g:ale_cpp_cc_options='-std=c++2b -Wall -pendatic -fmodules '

let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}
" ale for c++

let g:ale_cpp_cc_options = '-std=c++2b -Wall -pedantic -fmodules'
" custom setting for pylint

let g:ale_python_pylint_options = '--disable="C0114,C0115,C0116"'

"neoformat

let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="file:/root/Programs/C++/Playground/clang/style2"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

