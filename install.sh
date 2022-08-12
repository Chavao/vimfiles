if [ -e ~/.vimrc ]
then
  mv -f ~/.vimrc ~/.vimrc-before-chavao-vimfiles
fi

if [ -e ~/.config/nvim/init.vim ]
then
  mv -f ~/.config/nvim/init.vim ~/.config/nvim/init.vim-before-chavao-vimfiles
fi

touch ~/.vimrc

echo "source ~/.vim/vimrc" > ~/.vimrc

mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim

echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" > ~/.config/nvim/init.vim
echo "let &packpath = &runtimepath" >> ~/.config/nvim/init.vim
echo "source ~/.vimrc" >> ~/.config/nvim/init.vim

if [ -e ~/.vim ]
then
  mv -f ~/.vim ~/.vim-before-chavao-vimfiles
fi

git clone https://github.com/Chavao/vimfiles ~/.vim

cd ~/.vim

git submodule update --init

vim +NeoBundleInstall +qall
