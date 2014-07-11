syntax on
set guifont=Monaco:h13

inoremap jk <Esc>
imap ` <Esc>
noremap j gj
noremap k gk
nmap <leader>w :w!<cr>
set tabpagemax=15               " Only show 15 tabs
set autoread
set backupcopy=yes
set showmode                    " Display the current mode
set guioptions-=r 
set guioptions-=L
set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
syntax on
let mapleader = ","
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
set relativenumber
set cursorline
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set mouse=a                       " enable mouse support
set expandtab
set ttimeoutlen=50               " decrease timeout for faster insert with 'O'
set ruler                         " show row and column in footer
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
" set lazyredraw
set nocompatible              " be iMproved, required
filetype off                  " required

so ~/.vim/config/bundles.vim
" so ~/.vim/config/colors.vim
so ~/.vim/config/ctrlp.vim
so ~/.vim/config/completion.vim
so ~/.vim/config/watch.vim
let g:clang_user_options='|| exit 0'
"NERDTREE
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<cr>
map <leader>nf :NERDTreeFind<cr>

set ttimeout
set ttimeoutlen=250
set notimeout
"
"CURSOR FIX FOR TERMINAL VIM
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

"Config slime.vim
" let g:slime_target = "tmux"

"Config pymode
let g:pymode_lint_on_fly = 1

"Config syntastic
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['jslint']

"Backup config
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
map <Leader>ss :SlimuxREPLSendLine<CR>
vmap <Leader>ss :SlimuxREPLSendSelection<CR>
map <Leader>sl :SlimuxShellLast<CR>
map <Leader>sp :SlimuxShellPrompt<CR>
map <Leader>sk :SlimuxSendKeysLast<CR>
map <Leader>sc :SlimuxREPLConfigure<CR>
" map <leader>sb ggVG:SlimuxREPLSendSelection<CR><C-o><C-o>
map <Leader>sb :SlimuxREPLSendBuffer<CR>

" hi Special         ctermfg=81  ctermbg=234
" hi Normal          ctermfg=252 ctermbg=234
" Escape of brackets or quotes
inoremap <silent> <C-k> <Esc>/[)}k-enterste\steC<"'\]>]<CR>:nohl<CR>a

color wombat256mod
nmap <CR> o<Esc>
" Let me fix CR behavior bith brackets, now it 
" works with both completion and brackets
imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-j>"
set pastetoggle=<f6>

