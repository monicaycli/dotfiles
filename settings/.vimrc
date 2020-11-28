" PLUGINS
filetype plugin on
call plug#begin()
" git
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
" handy coding tools
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
" syntax
Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'darfink/vim-plist'
Plug 'elzr/vim-json'
" colors & themes
Plug 'guns/xterm-color-table.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'jeffkreeftmeijer/vim-dim'
" plain text
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'lervag/vimtex'
Plug 'chrisbra/csv.vim'
" pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
" navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" COPY
vnoremap y "+y
" enable mouse
set mouse=a

" DISPLAY
syntax on
set nocompatible
set backspace=2
set title
set cursorline
set laststatus=2
set noshowmode
set nowrap

" colorscheme
set background=dark
colorscheme dim
hi CursorLine cterm=NONE ctermbg=0

hi link GitGutterAdd DiffAdd
hi link GitGutterDelete DiffDelete
hi link GitGutterChange DiffChange

" highlight overlength characters (>80)
let g:overlength_highlight = 1
augroup overlength_highlight
    if g:overlength_highlight == 1
        au BufEnter * highlight OverLength ctermbg = 237
        au BufEnter * match OverLength /\%>80v.\+/
    elseif g:overlength_highlight == 0
        au!
    endif
augroup END

function! ToggleOverLengthHighlight()
    if g:overlength_highlight == 0
        hi OverLength ctermbg = 237
        match OverLength /\%>80v.\+/
        let g:overlength_highlight = 1
    else
        hi clear OverLength
        let g:overlength_highlight = 0
    endif
endfunction

nnoremap <M-H> :call ToggleOverLengthHighlight()<CR>
nmap Ó <M-H> "alt+shift+h

" line number
set nu " line number on
set rnu " relative line number on

" vim-gitgutter sign column
if exists('&signcolumn')  " Vim 7.4.2201
    set signcolumn=yes
else
    let g:gitgutter_sign_column_always = 1
endif

" split screen settings
" remap shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" more natural split opening
set splitbelow
set splitright

" CURSOR SHAPE
if $TERM =~ "xterm"
  let &t_SI = "\<Esc>[6 q"
  let &t_SR = "\<Esc>[4 q"
  let &t_EI = "\<Esc>[2 q"
endif

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

" VIM NAVIGATION
" Edit $MYVIMRC in separate tab with '\rc'
nnoremap <Leader>rc :tabe $MYVIMRC<CR>
inoremap <Leader>rc <C-O>:tabe $MYVIMRC<CR>

" Source $MYVIMRC with '\s'
nnoremap <Leader>s :so $MYVIMRC \| AirlineRefresh \| AirlineRefresh \| e<CR>
inoremap <Leader>s <C-O>:so $MYVIMRC \| AirlineRefresh \| AirlineRefresh \| e<CR>

" switch between buffers with `\]` and `\[`
nnoremap <Leader>] :bn<CR>
nnoremap <Leader>[ :bN<CR>

" switch between tabs with `\}` and `\{`
nnoremap <Leader>} :tabnext<CR>
nnoremap <Leader>{ :tabprevious<CR>

" horizontal scrolls
noremap <C-L><C-L> 20zl " scroll 20 characters to the right
noremap <C-H><C-H> 20zh " scroll 20 characters to the left

" FILE NAVIGATION
" change working directory to current file
set autochdir
" wildmenu (search for commands)
set wildmenu
set wildmode=longest:list,full
set wildignore+=*/.git/*
" ctrlp (search in directory)
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 2
let g:ctrlp_tilde_homedir = 1
" nerdtree
map <C-n> :NERDTreeToggle<CR>

" WHITESPACE
if $TERM != "xterm"
  set lcs=tab:»·,trail:~,extends:>,precedes:<,nbsp:·,eol:$
endif
set list
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
au FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smarttab
au FileType markdown setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smarttab

" TEXT LAYOUT
" Reflow paragraph or selection with `rf` (in normal and visual modes for
" markdown and tex files, and just visual modes for everything else)
au BufNewFile,BufRead *.md,*.tex,*.wiki,*.html nnoremap rf gqip
vnoremap rf gq

" SEARCH
set gdefault
set hlsearch
set incsearch

" AUTO-PAIRS
" toggle auto-pairs
imap π <M-p>
nmap π <M-p>
" go to next closed pair
imap ˜ <M-n>
nmap ˜ <M-n>
" fast wrap
imap ´ <M-e>
" back insert
imap ∫ <M-b>
" move to pair
imap · <M-(>
imap ‚ <M-)>
imap “ <M-[>
imap ‘ <M-]>
imap ” <M-{>
imap ’ <M-}>
imap Æ <M-">
imap æ <M-'>

" MARKDOWN
let g:vim_markdown_folding_disabled = 1
nnoremap <Leader>mm :setfiletype markdown<CR>

" PANDOC
" disable conceal
let g:pandoc#syntax#conceal#use = 0
" spell check
hi clear
      \ SpellBad
      \ SpellCap
      \ SpellRare
      \ SpellLocal
hi SpellBad   cterm=Underline
hi SpellRare  cterm=Underline
hi SpellLocal cterm=Underline
" enable pandoc functionality for markdown files while disabling pandoc's
" markdown syntax
let g:pandoc#filetypes#handled = ['pandoc', 'markdown']
let g:pandoc#filetypes#pandoc_markdown = 0

" AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_theme='minimalist'
au BufDelete * call airline#extensions#tabline#buflist#invalidate()

" PYTHON
let g:python_host_prog = '/Library/Frameworks/Python.framework/Versions/2.7/bin/python2'
let g:python3_host_prog = '//anaconda/envs/py36/bin/python3'
