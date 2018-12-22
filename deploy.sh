#! /bin/bash

# Install vim
# sudo apt-get install vim

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Move .vimrc to the right location
mv .vimrc ~/.vim/

vim +PluginInstall +qall

