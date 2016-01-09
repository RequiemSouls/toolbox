set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'uarun/vim-protobuf'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'msanders/snipmate.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'
Plugin 'sjl/gundo.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'spiiph/vim-space'
Plugin 'rhysd/vim-clang-format'

Plugin 'a.vim'
Plugin 'TaskList.vim'
Plugin 'DoxygenToolkit.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

au GUIEnter * simalt ~x

set guifont=Microsoft\ YaHei\ Mono:h11
set guioptions-=T
set guioptions-=r
set guioptions-=L
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

let c_no_curly_error=1
let g:ctrlp_by_filename=1
let g:molokai_original=1
let g:rehash256=1
let g:gitgutter_sign_removed_first_line='^'
let g:bookmark_auto_close=1
let g:bookmark_annotation_sign='##'
let g:bookmark_sign='#'
let g:NERDTreeWinSize=50
let g:NERDTreeDirArrowExpandable='>'
let g:NERDTreeDirArrowCollapsible='|'

syntax enable
colorscheme molokai

set nu
set hls
set sw=4
set ts=4
set cc=101
set expandtab
set laststatus=2
set nocompatible
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set formatoptions+=1
set cursorline

map <C-T> :TaskList<CR>
map <C-J> :NERDTreeFind<CR>
map <C-H> :A<CR>
map <C-K> :on<CR>
map <C-L> :Gstatus<CR>
map <C-G> :CtrlSF -G .*
map B :CtrlSFToggle<CR>
map C :ClangFormat<CR>
nnoremap H :GundoToggle<CR>

highlight LineNr ctermfg=242 ctermbg=235
highlight CursorLineNr ctermfg=10 ctermbg=0
highlight ColorColumn ctermbg=0
highlight CursorLine cterm=None ctermbg=235
highlight Search ctermfg=0 ctermbg=190
highlight Visual cterm=None ctermfg=15 ctermbg=4
highlight Pmenu ctermfg=0 ctermbg=242
highlight PmenuSel ctermfg=7 ctermbg=17
highlight MatchParen ctermfg=9 ctermbg=0
highlight DiffAdd cterm=None ctermfg=9 ctermbg=0
highlight DiffDelete cterm=None ctermfg=9 ctermbg=0
highlight DiffChange cterm=None ctermfg=7 ctermbg=0
highlight DiffText cterm=None ctermfg=7 ctermbg=235
highlight Todo cterm=None ctermfg=1 ctermbg=234
