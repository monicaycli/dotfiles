" PLUGINS
filetype plugin on
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'kurocode25/mdforvim'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'suan/vim-instant-markdown'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vimwiki/vimwiki'
call plug#end()

" DISPLAY
syntax on
set nocompatible
set backspace=2
set title
set cursorline
set laststatus=2
set noshowmode
colorscheme solarized

" line number
set nu " line number on
set rnu " relative line number on
" toggle show/hide sidebar (line number and GitGutter)
map <Leader>nu :set<Space>nu!<Enter>:GitGutterToggle<Enter>
" toggle show/hide relative line number
map <Leader>rnu :set<Space>rnu!<Enter>

" split screen settings
" remap shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" more natural split opening
set splitbelow
set splitright

" change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" FILE NAVIGATION
" change working directory to current file
set autochdir
" wildmenu (search for commands)
set wildmenu
set wildmode=longest:list,full
" ctrlp (search in directory)
" ignore git stuff
let g:ctrlp_user_command = ['.git',
            \ 'cd %s && git ls-files . -co --exclude-standard',
            \ 'find %s -type f' ]

" WHITESPACE
set lcs=tab:\▸\ ,trail:·
set list
set tabstop=4
set shiftwidth=4
set expandtab

" SEARCH
set gdefault
set hlsearch
set incsearch

" PANDOC
"" spell check
"let g:pandoc#modules#disabled = ["spell"]
"hi clear SpellBad
"hi SpellBad ctermfg=Yellow
"hi clear SpellCap
"hi SpellCap ctermfg=Blue
"""other spell checks include SpellRare and SpellLocal
"" pdf conversion
let g:pandoc#command#autoexec_on_writes = 1
let g:pandoc#command#autoexec_command = "Pandoc pdf"
map <leader>pp :Pandoc<Space>pdf<Enter>
"" enable pandoc functionality for markdown files while disabling pandoc's markdown syntax 
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0

" AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'

" VIMWIKI
let g:vimwiki_hl_headers = 1
" vimwiki with markdown support
let g:vimwiki_list = [{'path': '~/vimwiki/', 'ext': '.md', 'syntax': 'markdown'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" MARKDOWN
let g:vim_markdown_folding_disabled = 1
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>
