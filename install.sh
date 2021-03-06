#!/bin/bash
mkdir -p ~/.vim/autoload
cd ~/.vim
git clone git://github.com/iwalz/vim-c.git vim-c
curl 'www.vim.org/scripts/download_script.php?src_id=19375' > ~/.vim/autoload/pathogen.vim
mv vim-c/.vimrc ~/.vimrc
mv vim-c/.vimrc.* ~/
if [ ! -f ~/.vimrc.local ]; then
	touch ~/.vimrc.local	
fi
cd vim-c
git submodule init
git submodule update
cd ..
mv vim-c/bundle bundle
rm -rf vim-c
cd bundle
export TERM=xterm-256color
echo "export TERM=xterm-256color" >> ~/.bashrc
echo "stty erase ^?" >> ~/.bashrc
wget https://conque.googlecode.com/files/conque_2.3.vmb
vim -c 'so % | q' conque_2.3.vmb
rm -rf conque_2.3.vmb
