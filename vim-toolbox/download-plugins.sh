#!/bin/sh

echo Downloading VundleVim ...
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo Copying .vimrc file ...
cp .vimrc ~/.vimrc

echo Install plugins ...
vim +PluginInstall
