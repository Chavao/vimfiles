if [ -e ~/.vimrc ]
then
  mv -f ~/.vimrc ~/.vimrc-before-chavao-vimfiles
fi

touch ~/.vimrc

echo "source ~/.vim/vimrc" > ~/.vimrc

if [ -e ~/.vim ]
then
  mv -f ~/.vim ~/.vim-before-chavao-vimfiles
fi

git clone https://github.com/Chavao/vimfiles ~/.vim

cd ~/.vim

git submodule update --init

vim +NeoBundleInstall +qall
