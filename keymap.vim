" Saving files
map <Leader>s <Esc>:w<CR>
map <Leader>x <Esc>:wq<CR>
map <Leader>q <Esc>:q<CR>
map <Leader>fq <Esc>:q!<CR>

" Khuno configuration
nmap <silent><Leader>k <Esc>:Khuno show<CR>

" File explorer shortcut
map <Leader>t :Ex<CR>

" Rename file
map <Leader>r :call RenameFile()<CR>

" Numbers setup
nnoremap <Leader>n :NumbersToggle<CR>

" Fugitive setup
map <Leader>gg <Esc>:Gstatus<CR>
map <Leader>gc <Esc>:Gcommit<CR>
map <Leader>ga <Esc>:Gwrite<CR>
map <Leader>gd <Esc>:Gdiff<CR>

" Tabs shortcuts
nnoremap <Leader>a :tabprevious<CR>
nnoremap <Leader>d :tabnext<CR>

" Buffer shortcuts
nmap <silent><Tab> :CtrlSpace<CR>
nmap <silent><S-Tab> :bn<CR>
map <Leader>d :bd<CR>

" Avoid move with arrow keys
map <Left> :echo "Oops! Use h!"<CR>
map <Right> :echo "Oops! Use l!"<CR>
map <Up> :echo "Oops! Use k!"<CR>
map <Down> :echo "Oops! Use j!"<CR>

" Switch between Vim window splits easily
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Delete without overwrite buffer
nnoremap R "_d

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Remove trailing spaces
nnoremap <silent> <F5> :call RemoveTraillingSpaces()<CR>

" Tagbar setup
nnoremap <F4> :TagbarToggle<CR>

" Toggle paste mode
set pastetoggle=<F2>
