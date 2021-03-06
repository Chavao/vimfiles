" Set encoding to UTF-8
set encoding=utf-8

" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

" Load all Neobundle Bundles
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" gvim settings
if has('gui_running')
    set guioptions=-M
    set lines=999 columns=999
endif

call neobundle#begin(expand('~/.vim/bundle'))

let g:neobundle#types#git#default_protocol = 'https'
NeoBundleFetch 'Shougo/neobundle.vim'

source ~/.vim/neobundle.vim

call neobundle#end()
NeoBundleCheck

" Set vim-specific functions available, breaking compatibility with vi
set nocompatible

" Line number
set number

" Color settings
syntax on
set t_Co=256
colorscheme molokai
set cursorline!
set lazyredraw
set cursorcolumn
hi Visual term=reverse cterm=reverse guibg=Grey

" Search options
set incsearch
set hlsearch
nnoremap <CR> :nohlsearch <CR><CR>

" History setup
set history=700
set undolevels=700

" Line wrapping options
set nowrap

" Enable mouse use in all modes
set mouse=a

" Disable visual bells
set visualbell t_vb=

" Hide files in Ex
let g:netrw_list_hide= '.*\.pyc$'

" Statusline setup
set statusline=%f\  " Filename
set statusline+=%c, " Cursor Column
set statusline+=%l/%L " Cursor Line/Total Lines
set statusline+=%{StatuslineTrailingSpaceWarning()}

set laststatus=2

" Indentation settings
set sw=4
set sts=4
set expandtab
set autoindent

" Loading indent and plugins depending on the filetype
filetype plugin on
filetype indent on

" Folding settings
set nofoldenable

" Fix slow O inserts
set timeout timeoutlen=1000 ttimeoutlen=100

" Command line completion
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*.swp,*~,#*#

" Display tabs and trailing spaces
set list
set listchars=tab:\ ¬,trail:.

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden
set switchbuf=useopen

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Abbreviations to keep me from going insane
source ~/.vim/abbreviations.vim

" Changing default leader key
let mapleader=","

" File type configuration
source ~/.vim/fileconfig.vim

" Functions
source ~/.vim/functions.vim

" Leader commands
source ~/.vim/keymap.vim

" Snippets
source ~/.vim/snippets.vim

" Ctrl P setup
let g:ctrlp_map = "<C-P>"
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules$',
            \ 'file': '\.pyc$',
            \ }
let g:ctrlp_working_path_mode = 2
let g:ctrlp_dotfiles = 0
let g:ctrlp_max_files = 99999999

" NERDTree setup
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Ctrl-Space setup
let g:ctrlspace_symbols = {
        \ "cs"      : "#",
        \ "tab"     : "⊙",
        \ "all"     : "∷",
        \ "open"    : "◎",
        \ "tabs"    : "○",
        \ "c_tab"   : "●",
        \ "load"    : "⋮ → ∙",
        \ "save"    : "∙ → ⋮",
        \ "prv"     : "⌕",
        \ "s_left"  : "›",
        \ "s_right" : "‹"
        \ }

" EasyMotion setup
let g:EasyMotion_leader_key = ';'

" Recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning
