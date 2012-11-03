" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

" Load all Pathogen Bundles
call pathogen#runtime_append_all_bundles()

" Set vim-specific functions available, breaking compatibility with vi
set nocompatible

" Line number
set number

" Color settings
syntax on
set t_Co=256
colorscheme molokai

" Search options
set incsearch
set hlsearch

" Line wrapping options
set wrap

" Disable visual bells
set visualbell t_vb=

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

" Commando line completion
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

" Tabs shortcuts
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Abbreviations to keep me from going insane
iab lenght length
iab widht width
iab heigth height
cab W w
cab Q q
cab Wq wq
cab WQ wq
cab qw wq
cab X x
cab tn tabnew

" Changing default leader key
let mapleader=","

" FuzzyFinder configuration
let g:fuf_coveragefile_globPatterns=['**/*.rb', '**/*.js', '**/*.erb', '**/*.css','**/*.php', '**/*.py']
let g:fuf_coveragefile_exclude= 'vendor\/'
let g:fuf_keyOpenTabpage = '<CR>'
nnoremap <silent> <C-P> :FufFile<CR>

" Snipmate setup
source ~/.vim/snippets/support_functions.vim

" Ragtag setup
let g:ragtag_global_maps = 1

" TabMan setup
let g:tabman_toggle = '<leader>mt'
let g:tabman_focus  = '<leader>mf'

" NERDTree setup
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")

        if !&modifiable
            let b:statusline_trailing_space_warning = ''
            return b:statusline_trailing_space_warning
        endif

        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction

" Removing trailing spaces from ruby files (by @bbcoimbra)
function! RemoveTraillingSpaces()
        let cursor_pos = getpos(".")
        %s/[ \t]*$//g
        call setpos(".", cursor_pos)
endfunction

nnoremap <silent> <F5> :call RemoveTraillingSpaces()<CR>
