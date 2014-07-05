let g:clang_user_options='|| exit 0'
nnoremap <silent> [<space> :pu! _<cr>:']+1<cr>
nnoremap <silent> ]<space> :pu _<cr>:'[-1<cr>

set tabpagemax=15               " Only show 15 tabs
set showmode                    " Display the current mode
set guioptions-=r 
set guioptions-=L
highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode
set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set nu                          " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
inoremap jk <Esc>
syntax on
let mapleader = ","
execute pathogen#infect()
filetype plugin indent on

set laststatus=2
set statusline+=%F
set noswapfile
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
set background=dark
colorscheme monokai
highlight SignColumn guibg=#272822 
if has("gui_running")
  set guifont=Monaco:h13
else
  set lazyredraw
endif
" "set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/taglist.vim'
Bundle 'kikijump/tslime.vim'
Bundle 'SirVer/ultisnips'
Bundle "skwp/vim-colors-solarized"
Bundle "chrisbra/color_highlight.git"
Bundle "itchyny/lightline.vim"
Bundle "jpalardy/vim-slime"
Bundle "jby/tmux.vim.git"
Bundle 'honza/vim-snippets'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle 'lsdr/monokai'
Bundle "tomtom/tlib_vim"
Bundle 'Scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'vim-scripts/taglist.vim'
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
"NERDTREE
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<cr>
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

so ~/.vim/config/ctrlp.vim
so ~/.vim/config/completion.vim
let g:slime_target = "tmux"
let g:pymode_lint_on_fly = 1
let g:syntastic_enable_signs=1
  let g:syntastic_javascript_checkers = ['jshint']
