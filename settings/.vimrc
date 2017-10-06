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
set lcs=tab:\▹\ ,trail:·
set list
set tabstop=2
set shiftwidth=0
set noexpandtab

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
"" bibliography
let g:pandoc#biblio#bibs = ["/Users/mli/Google-Drive/Manuscripts/library.bib"]
let g:pandoc#completion#bib#mode = 'citeproc'
let g:pandoc#biblio#use_bibtool = 1
"" pdf conversion
let g:pandoc#command#autoexec_on_writes = 0
let g:pandoc#command#autoexec_command = "Pandoc pdf"
map <leader>pp :Pandoc<Space>pdf<Space>-sS<Space>--csl<Space>/Users/mli/Google-Drive/Github/styles/apa.csl<Enter>
map <leader>pp! :Pandoc!<Space>pdf<Space>-sS<Space>--csl<Space>/Users/mli/Google-Drive/Github/styles/apa.csl<Enter>
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
" header colors
let g:vimwiki_hl_headers = 1
hi vimwikiheader1 ctermfg=125
hi VimwikiHeader2 ctermfg=136
hi VimwikiHeader3 ctermfg=64
hi VimwikiHeader4 ctermfg=37
hi VimwikiHeader5 ctermfg=37
hi VimwikiHeader6 ctermfg=37
" vimwiki with markdown support
let g:vimwiki_list = [{'path': '~/vimwiki/', 'ext': '.md', 'syntax': 'markdown'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" vimwiki tag settings
map <Leader>vst :VimwikiSearchTags
map <Leader>vgt :VimwikiGenerateTags<Enter>
map <Leader>vrt :VimwikiRebuildTags<Enter>
map <Leader>lo :lopen<Enter>
" todo list settings
map <Leader>tt <Plug>VimwikiToggleListItem
let g:vimwiki_listsyms = ' .oOx'

" MARKDOWN
let g:vim_markdown_folding_disabled = 1
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>
