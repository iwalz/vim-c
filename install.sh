#!/bin/bash
mkdir -p ~/.vim/autoload
cd ~/.vim
git clone git://github.com/iwalz/vim-c.git .
curl 'www.vim.org/scripts/download_script.php?src_id=19375' > ~/.vim/autoload/pathogen.vim
mv ./.vimrc ~/.vimrc
git submodule init
git submodule update
