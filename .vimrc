let g:clang_user_options='|| exit 0'
inoremap jk <Esc>
syntax on
let mapleader = ","
execute pathogen#infect()
filetype plugin indent on
set laststatus=2
set foldlevelstart=10
set autoindent                    " set auto indent
set ts=2                          " set indent to 2 spaces
set wildmenu
set wildmode=longest:full,full
set shiftwidth=2
set expandtab                     " use spaces, not tab characters
set nocompatible                  " don't need to be compatible with old vim
set showmatch                     " show bracket matches
set relativenumber
set cursorline
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set mouse=a                       " enable mouse support
set ttimeoutlen=50               " decrease timeout for faster insert with 'O'
set ruler                         " show row and column in footer
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full

"COLORS
" set background=dark
if has("gui_running")
  set guifont=Monaco:h14
else
  set lazyredraw
endif
colorscheme base16-railscasts
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1
if version >= 700
	au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
	au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif
"set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'Bling/vim-airline'
Bundle 'Scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'python.vim'
Bundle 'python_match.vim'
Bundle 'pythoncomplete'
Bundle 'elzr/vim-json'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-surround'
Bundle 'amdt/vim-niji'
Bundle 'pangloss/vim-javascript'
Bundle 'briancollins/vim-jst'
Bundle 'kchmck/vim-coffee-script'
Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'tpope/vim-haml'
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'christoomey/vim-tmux-navigator'
call vundle#end()            " required
filetype plugin indent on    " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""
"CTRLP
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-p>'
map <leader>p :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
""""""""""""
"NERDTREE
map <C-n> :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

""""""""""""
 set ttimeout
set ttimeoutlen=250
set notimeout
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end
