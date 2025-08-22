" =========================
" Editing
" =========================
syntax on
filetype plugin indent on

set number            
set linebreak         " Break lines at word boundaries (requires wrap)
set showbreak=+++     " Wrap-broken line prefix
set textwidth=100     " Automatic hard-wrap at 100 cols (use 0 to disable)
set showmatch         
set visualbell        

set hlsearch          " Highlight all search results
set ignorecase        
set incsearch         " Incremental search

set autoindent        " Auto-indent new lines
set shiftwidth=4      " Indent width
set smartindent       " C-like smart indent
set smarttab          " Backspace respects softtabstop at line start
set softtabstop=4     " Number of spaces per Tab

set ruler             " Show row/column ruler
set undolevels=1000   " Undo levels (consider 'set undofile' for persistence)
set backspace=indent,eol,start  " Backspace behaviour

" Vimwiki settings (requires plugin)
let g:vimwiki_global_ext = 0
let g:vimwiki_ext2syntax = {}

" Visible whitespace
set list
set listchars=tab:»·,trail:·

" =========================
" Automation
" =========================

" Auto-load template for new wiki files - Adapt on server to required templates
augroup vimwiki_templates
  autocmd!
  autocmd BufNewFile ~/vimwiki/blog/*.md 0read ~/vimwiki/templates/blogtemplate.md
augroup END







