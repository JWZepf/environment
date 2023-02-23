set nocompatible    		" Disable compatibility to old-time vi

" Plugins
call plug#begin('/Users/jzepf/.config/nvim/plugged')
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()

" NerdTree
" Open NerdTree on ctrl+n
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Colors
set t_Co=256                " Use 256 color palette
set background=light
" set background=dark
colorscheme one
let g:airline_theme='one'

" Spacing and Tabs
set tabstop=4	    		" Number of spaces per tab
set softtabstop=4   		" Number of spaces per tab while editing
set shiftwidth=4    		" Width for autoindents
set expandtab	    		" Converts tabs to whitespace
set autoindent	    		" New lines inherit the indentation of previous lines
filetype plugin indent on	" Allows auto-indenting depending on file type

" UI Config
set number 			        " Show line numbers
set showcmd			        " Shows command in bottom bar
set cursorline			    " Highlight current line
set wildmenu			    " Visual autocomplete for command menu
set wildmode=longest,list	" Get bash-like tab completions
set showmatch			    " Show matching {,[,(
set laststatus=2		    " Always display the status bar
set noerrorbells		    " Disable beep on errors
set visualbell			    " Flash screen instead of beeping on errors
set title			        " Set window's title reflecting file currently being edited

" Text Rendering
set linebreak 			    " Avoid wrapping a line in the middle of a word
syntax enable			    " Enable syntax processing
set wrap			        " Enable line wrapping

" Searching
set incsearch			    " Search as characters are entered
set nohlsearch			    " Highlight matches
set ignorecase			    " Ignore case when searching

" Folding
set foldenable			    " Enables code folding
set foldlevelstart=10		" Sets max number of folds to 10
" Maps space to open / close folds
nnoremap <space> za
set foldmethod=indent 		" Fold based on indent level

" Movement
" Move vertically by ~visual~ line
nnoremap j gj
nnoremap k gk
" Move to beginning / end of line
nnoremap B ^
nnoremap E $
" $ / ^ don't do anything
nnoremap ^ <nop>
nnoremap $ <nop>A
" Highlight last inserted text
nnoremap gV '[v']

" Windows
" Natural Splitting
set splitbelow
set splitright
" Create better window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Leader Shortcuts
let mapleader=","		    " Leader is comma
" jk is Esc
inoremap jk <esc>

" Strip trailing whitepace
function! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
