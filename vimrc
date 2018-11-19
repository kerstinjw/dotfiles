set encoding=utf-8

""""""""""""""
" Vundle
""""""""""""""
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'


call vundle#end()
filetype plugin on

""""""""""""""
" Plugin config
""""""""""""""

" enable nerdtree by default
"autocmd vimenter * NERDTree
" open nerdtree with ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>
" close vim when the only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""
" UI Config
""""""""""""""

" scheme installed in ~/.vim/colors/
colorscheme molokai
set t_Co=256

" enable syntax processing
syntax enable

" number of visual spaces per TAB
set tabstop=4
" number of spaces for tab in editing
set softtabstop=4
" auto change tab to space
set expandtab

" show line number
set number
" show command in bottom bar
set showcmd
" highlight current line
set cursorline
" max 128 character per line
set textwidth=128
" auto wrap too long line
set wrap
" only break line at space, -, or other marks
" ensure to not break a whole word
set linebreak
" enable filetype detection and load filetype-specific indent files
" auto load language indent files installed in ~/.vim/indent/
filetype indent on

" autocomplete for command menu
set wildmenu
set wildmode=longest:list,full

" highlight matching [{()}]
set showmatch

""""""""""""""
" Searching
""""""""""""""

" searsh as characters are entered
set incsearch
" highlight matches
set hlsearch
" ignore case
set ignorecase
" map 'q' to :nohlsearch, short cut for disable matches highlight
nnoremap q :nohlsearch<CR>

""""""""""""""
" Editing
""""""""""""""

" enable spell check
set spell spelllang=en_us
" disable error bell
set noerrorbells

" enable auto notification when file is changed during editing
set autoread

" disable backup, aka no additional file when save
set nobackup
" no swap file
set noswapfile


""""""""""""""
" Folding
""""""""""""""

" enable folding
set foldenable
" fold based on indent level
set foldmethod=indent
" open most folds by default
set foldlevelstart=10
" max 10 nested folds
set foldnestmax=10
" map '<space>' to folding/unfolding
nnoremap <space> za

" auto indent when start a new line
set autoindent
set copyindent

""""""""""""""
" Shortcut and Moving
""""""""""""""

" move vertical by visual line
" in order to not skip a visually wrapped line
nnoremap j gj
nnoremap k gk
" map 'B' to line start
nnoremap B ^
" map 'E' to line end
nnoremap E $
" de-map the original '^' and '$'
nnoremap ^ <nop>
nnoremap $ <nop>
" hightlight last inserted text
nnoremap gV `[v`]

" enable mouse
"set mouse=a
" offset to top or bottom when scroll vertically - 5 lines
set scrolloff=5
" set sidescrolloff=5

