#!/bin/bash
echo "[diff]" >> ~/.gitconfig
echo "  external = ~/.vim/diff_wrapper" >> ~/.gitconfig
wget -q https://raw.github.com/iwalz/vim-c/master/diff_wrapper -o ~/.vim/diff_wrapper
