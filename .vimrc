"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/shoji/.dein.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/shoji/.dein.vim')
  call dein#begin('/home/shoji/.dein.vim')

  " Let dein manage dein
  " Required:
  call dein#add('/home/shoji/.dein.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('othree/yajs.vim')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('scrooloose/nerdtree')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

colorscheme murphy

set nobackup
set noswapfile
set autoread
set number
set cursorline
set list listchars=tab:\▸\-,trail:~,eol:↲,extends:»,precedes:«,nbsp:%
set foldmethod=indent
"set foldlevel=999 "Don't autofold anything
set showtabline=2
set tabstop=2 shiftwidth=2

" nathanaelkane/vim-indent-guides
" http://wonderwall.hatenablog.com/entry/2016/03/21/205741
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

" scrooloose/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

