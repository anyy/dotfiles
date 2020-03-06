set encoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
set fileformats=unix,dos,mac
set guifont=Hack_Regular_Nerd_Font_Complete:h11

set hlsearch
set number
set noautoindent
set ignorecase
set title
set noswapfile
set nobackup
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed
set cursorline
set nowrap
set splitright
set splitbelow
set updatetime=100
" set mouse=a

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>

nnoremap <ESC><ESC> :noh<CR>

filetype plugin indent on

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif

syntax on
set background=dark
" onedark
colorscheme onedark

" challenger-deep
"colorscheme challenger_deep

" tomorrow-theme
"colorscheme Tomorrow-Night-Bright

" dracula
"colorscheme dracula

" quantum
" colorscheme quantum

" nord-vim
" colorscheme nord"

" neodark
" colorscheme neodark

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
endif

if (has("termguicolors"))
  set termguicolors
endif

hi illuminatedWord cterm=underline gui=underline
