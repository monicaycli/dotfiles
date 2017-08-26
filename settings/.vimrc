" misc
set nocompatible
filetype plugin on
syntax on
set backspace=2
set autochdir
set nu " line number on
map <Leader>nu :set<Space>nu!<Enter>

" word & line wrapping
"set tw=80 " hard wrap at column 80
"set colorcolumn=+1 " show hard wrap boundary

" tab width
set tabstop=4
set shiftwidth=4
set expandtab

" plugins
call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'suan/vim-instant-markdown'
Plug 'flazz/vim-colorschemes'
call plug#end()

" colorscheme
" colorscheme material 

" GitGutter settings
map <Leader>ggt :GitGutterToggle<Enter>
map <Leader>ggst :GitGutterSignsToggle<Enter>
map <Leader>gght :GitGutterLineHighlightsToggle<Enter>

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
" vimwiki with markdown support
let g:vimwiki_list = [{'path': '~/vimwiki/', 'ext': '.md', 'syntax': 'markdown'}]

" split screen settings
" remap shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" more natural split opening
set splitbelow
set splitright

" markdown settings
let g:vim_markdown_folding_disabled = 1
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
