#!/bin/sh

sudo apt-get install -y zsh git pypy vim

# install pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install virtualenv, autopep8, jedi
rm get-pip.py
# config pip
mkdir ~/.pip
cp conf/pip.conf ~/.pip/pip.conf


# install zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# config github account
git config --global user.name 'OctavianLee'
git config --global user.email 'octavianlee1@gmail.com'

# config vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp conf/vimrc ~/.vimrc
vim +PluginInstall +qall
