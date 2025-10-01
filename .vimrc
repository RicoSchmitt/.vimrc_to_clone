" General
" =========================
set number            " Show line numbers
set linebreak         " Break lines at word boundaries (requires wrap)
set showbreak=+++     " Wrap-broken line prefix
set textwidth=100     " Automatic hard-wrap at 100 cols (use 0 to disable)
set showmatch         " Highlight matching brace
set visualbell        " Use visual bell (no beeping)

set hlsearch          " Highlight all search results
set ignorecase        " Case-insensitive search…
set incsearch         " Incremental search

set autoindent        " Auto-indent new lines
set shiftwidth=4      " Indent width
set smartindent       " C-like smart indent
set smarttab          " Backspace respects softtabstop at line start
set softtabstop=4     " Number of spaces per Tab

" =========================
" Advanced
" =========================
set ruler             " Show row/column ruler
set undolevels=1000   " Undo levels (consider 'set undofile' for persistence)
set backspace=indent,eol,start  " Backspace behaviour

" Use Markdown files in ~/vimwiki as a Vimwiki
" Add vimwiki config here (append list as needed)
" When added run :VimwikiIndex 2 (or other number depending on the number of the list-entry) from vim inside the path defined
" This will create an index for that wiki
let g:vimwiki_list = [
\ {'name': 'name',     'path': '~/insertpath/',   'syntax': 'markdown', 'ext': '.md'},
\]
let g:vimwiki_global_ext = 0


" Vimwiki settings (requires plugin)
let g:vimwiki_global_ext = 0
let g:vimwiki_ext2syntax = {}
set nocompatible
filetype plugin on


" Visible whitespace
set list
set listchars=tab:»·,trail:·

" Auto-load template for new wiki files
augroup vimwiki_templates
  autocmd!
  autocmd BufNewFile ~/vimwiki/blog/*.md 0read ~/vimwiki/templates/blogtemplate.md
augroup END

syntax on
filetype plugin indent on
