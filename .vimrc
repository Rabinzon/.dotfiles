  set nocompatible
  set mouse=a
  set nobackup
  set noswapfile
  set noeb vb t_vb=           " disable error beeping
  set tildeop                 " use ~ as operator for text objects like `~iw`
  set nowrap                  " hate wrapping for tiny windows. It makes code absolute unreadable
  set number                  " Show line numbers
  set nostartofline           " Don’t reset cursor to start of line when moving around.
  set colorcolumn=80          " bad and extrabad line sizes
  set showmode                " Show the current mode
  set clipboard=unnamed       " use os x clipboard
  set backspace=2             " use c-w and c+u
  set showcmd                 " Display incomplete commands.
  :au InsertEnter * set cul   " Show cursor line in insert mode
  :au InsertLeave * set nocul " Hide cursor line in insert mode
  set scrolloff=8             " Start scrolling when we're 8 lines away from margins

  " Shortcuts for moving between tabs.
  noremap [ gT
  noremap ] gt

  " Disable <Arrow keys>
  inoremap <Up> <NOP>
  inoremap <Down> <NOP>
  inoremap <Left> <NOP>
  inoremap <Right> <NOP>
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>

  " arrow key to navigate windows
  noremap <Down> <C-W>j
  noremap <Up> <C-W>k
  noremap <Left> <C-W>h
  noremap <Right> <C-W>l

  " save file by C-s
  noremap <silent> <C-S>          :update<CR>
  vnoremap <silent> <C-S>         <C-C>:update<CR>
  inoremap <silent> <C-S>         <C-O>:update<CR>

  inoremap <C-l> <Right>
  inoremap <C-h> <Left>
  inoremap <C-k> <Up>
  inoremap <C-j> <Down>

  set autoread
  " Snippets
  nmap <f5> :tabedit ~/.vim/bundle/vim-snippets/snippets/<CR>

  com! FormatJSON %!python -m json.tool

  " Return to last edit position when opening files (You want this!)
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " Remember info about open buffers on close
  set viminfo^=%

  fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
  endfun

" Automatically clean trailing whitespaces on save
autocmd BufWritePre *.* :call <SID>StripTrailingWhitespaces()
set relativenumber

" Encoding
set encoding=utf-8 nobomb
set fileencoding=utf-8 " Use UTF-8 without BOM

" # Search
set incsearch
set ignorecase " Ignore case of searches
set hlsearch   " Highlight searches

" # Ident
set tabstop=4
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent
set pastetoggle=<F2>  " to fix weird behawiour on paste, etc
set list              " show invisibles
set lcs=tab:▸\ ,eol:¬ " Use the same symbols as TextMate for tabstops and EOLs
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
syntax enable
filetype plugin indent on
hi Normal ctermbg=none

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'digitaltoad/vim-pug'
Plug 'vim-airline/vim-airline-themes'
Plug 'wavded/vim-stylus'
Plug 'isRuslan/vim-es6'
Plug 'djoshea/vim-autoread'
Plug 'mileszs/ack.vim'
Plug 'mattn/emmet-vim'
Plug 'dracula/vim'

call plug#end()
map <C-n> :NERDTreeToggle<CR>

syntax on
color dracula
set background=dark

:au FileChangedShell * echo "Warning: File changed on disk"
