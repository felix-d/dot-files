set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Bundle 'Valloric/YouCompleteMe'
Bundle 'chriskempson/base16-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'epeli/slimux'
Bundle 'noah/vim256-color'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'skammer/vim-css-color'
Bundle 'SirVer/ultisnips'
Bundle "skwp/vim-colors-solarized"
Bundle "itchyny/lightline.vim"
Bundle "jby/tmux.vim.git"
Bundle 'honza/vim-snippets'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle 'lsdr/monokai'
Bundle "tomtom/tlib_vim"
Bundle 'Scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'python.vim'
Bundle 'python_match.vim'
Bundle 'pythoncomplete'
Bundle 'elzr/vim-json'
Bundle 'tpope/vim-surround'
Bundle 'amdt/vim-niji'
Bundle 'lilydjwg/colorizer'
Bundle 'rking/ag.vim'
Bundle 'ervandew/supertab'

"JavaScript
Bundle 'jelera/vim-javascript-syntax'
" Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'claco/jasmine.vim'
Bundle 'matthewsimo/angular-vim-snippets'
"HTML
" Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'othree/html5.vim'

"CSS
Bundle 'hail2u/vim-css3-syntax'
" Bundle 'gorodinskiy/vim-coloresque'
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'christoomey/vim-tmux-navigator'
" Bundle 'kana/vim-smartinput'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'morhetz/gruvbox'
call vundle#end()            " required
filetype plugin indent on    " required
