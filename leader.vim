" Saving files
map <Leader>s <Esc>:w<CR>
map <Leader>x <Esc>:wq<CR>
map <Leader>q <Esc>:q<CR>

" Khuno configuration
nmap <silent><Leader>k <Esc>:Khuno show<CR>

" NERDTree shortcut
map <Leader>t :NERDTreeToggle<CR>

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
