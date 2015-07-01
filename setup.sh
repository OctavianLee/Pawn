#!/bin/sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install pip
brew install wget
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py

# install vitualenv
sudo pip install vitualenv

# config github account
brew intall git
git config --global user.name 'OctavianLee'
git config --global user.email 'octavianlee1@gmail.com'

# config vim
brew intall vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp conf/vimrc ~/.vimrc
vim +PluginInstall +qall
