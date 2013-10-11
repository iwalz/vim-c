VIM Setup, optimized for C development
======================================

Since a long time, I was looking for different Editors and IDEs for C development.
But I noticed, I'm not really happy about them at all. And I always fallback to the console, doing different things.
Either running your programs with `valgrind`, using `gdb` from the command line - or even `objdump`.
And I'm quite familar with the fantastic editor `vim`. So I decided to switch to `vim` for development and optimize it, according to my needs.

This is a self-plugined and configured installation of vim, using the power of dot-files and folders.

There are already some full-configured projects, such as [spf13](http://spf13.com/)'s [The Ultimate Vim Distribution](http://vim.spf13.com/) - but I decided to build my own one.

Installation
------------

To install that setup, run
```
curl https://raw.github.com/iwalz/vim-c/master/install.sh | bash
```
I suggest to start without a `.vimrc` and `.vim` directory. Dependencies are `ctags` (supertab) and python support (conque shell) enabled in vim.

Features
--------

 * File Browser
 * Open/Search File Shortcut
 * Integrated bash
 * Code outline
 * Code completion
 * Tabs
 * Better statusbar
 * Syntax highlighting
 * Merge Tool

Plugins
-------

There are quite a lot cool vim plugins around - I guess it's even too much to keep the overview.
The plugins are managed via [pathogen](https://github.com/vim-scripts/pathogen.vim), using git-submodules. This helps to keep your `.vim` directory clean and your plugins up to date. 
And it's quite easy ... The plugins, I use in this setup:

1. [Conque-Shell](https://github.com/vim-scripts/Conque-Shell) ([vim.org](http://www.vim.org/scripts/script.php?script_id=2771))

2. [CtrlP](https://github.com/kien/ctrlp.vim) ([vim.org](http://www.vim.org/scripts/script.php?script_id=3736))

3. [delimitMate](https://github.com/Raimondi/delimitMate) ([vim.org](http://www.vim.org/scripts/script.php?script_id=2754))

4. [Neocomplcache](https://github.com/Shougo/neocomplcache.vim) ([vim.org](http://www.vim.org/scripts/script.php?script_id=2620))

5. [NerdTree](https://github.com/scrooloose/nerdtree) ([vim.org](http://www.vim.org/scripts/script.php?script_id=1658))

6. [Supertab](https://github.com/ervandew/supertab) ([vim.org](http://www.vim.org/scripts/script.php?script_id=1643))

7. [syntastic](https://github.com/scrooloose/syntastic) ([vim.org](http://www.vim.org/scripts/script.php?script_id=2736))

8. [tagbar](https://github.com/majutsushi/tagbar) ([vim.org](http://www.vim.org/scripts/script.php?script_id=3465))

9. [airline](https://github.com/bling/vim-airline) ([vim.org](http://www.vim.org/scripts/script.php?script_id=4661))

10. [fugitive](https://github.com/tpope/vim-fugitive) ([vim.org](http://www.vim.org/scripts/script.php?script_id=2975))

11. [NerdTree-Tabs](https://github.com/jistr/vim-nerdtree-tabs) 

12. [Surround](https://github.com/tpope/vim-surround) ([vim.org](http://www.vim.org/scripts/script.php?script_id=1697))

13. [Splice](https://github.com/sjl/splice.vim/) ([vim.org](http://www.vim.org/scripts/script.php?script_id=4026))
