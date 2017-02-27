" hello, nvim. settings for a simpler life.

" vim plugins, using vim-plug.

call plug#begin('~/.local/share/nvim/plugged')

Plug 'neomake/neomake'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'thinca/vim-ref'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'rust-lang/rust.vim'
Plug 'mileszs/ack.vim'

call plug#end()

" vim settings

filetype plugin indent on
syntax on

set encoding=utf-8
set termencoding=utf-8

set noswapfile
set hidden
set autoread

set autoindent
set copyindent
set backspace=indent,eol,start
set ts=2
set sw=2
set et

set incsearch
set hlsearch
set ignorecase
set smartcase

set noeol
set binary

set path+=**

set numberwidth=3
set textwidth=0
set nowrap
set showcmd
set showmatch
set ruler
set wildmenu
set visualbell
set laststatus=2
set list listchars=tab:>-,trail:.,extends:>
set list

set termguicolors
set background=dark
colorscheme onedark

set clipboard=unnamed
set sessionoptions=buffers
set splitright
set splitbelow

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" plugin settings

autocmd! BufWritePost * Neomake

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 25

let g:deoplete#enable_at_startup = 1

let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_max_height = 40
let g:ctrlp_switch_buffer = 1
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed', 'line']
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
  
  let g:ackprg = 'ag --vimgrep'
endif

let g:jsx_ext_required = 0

" keyboard shortcuts

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

nnoremap <Leader>w :w<CR>

nnoremap <Leader>, :bp<CR>
nnoremap <Leader>. :bn<CR>
nnoremap <Leader>m :only<CR>