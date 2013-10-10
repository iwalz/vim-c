#!/bin/bash
mkdir -p ~/.vim/autoload
cd ~/.vim
git clone git://github.com/iwalz/vim-c.git vim-c
curl 'www.vim.org/scripts/download_script.php?src_id=19375' > ~/.vim/autoload/pathogen.vim
mv vim-c/.vimrc ~/.vimrc
cd vim-c
git submodule init
git submodule update
cd ..
mv vim-c/bundle bundle
rm -rf vim-c
