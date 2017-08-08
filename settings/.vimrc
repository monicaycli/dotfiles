" misc
set nocompatible
filetype plugin on
syntax on
set backspace=2
set autochdir

" plugins
call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

" lightline settings
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" vimwiki settings
let g:vimwiki_hl_headers = 1

" split screen settings
" remap shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" more natural split opening
set splitbelow
set splitright

" markdown syntax highlighting settings
let g:vim_markdown_folding_disabled = 1

