TJ's dotfiles
=============

Yet another personal dotfiles repo.

## What's included

* Zsh config using zgen and oh-my-zsh
    * all scripts (such as exports, paths, etc.) can be placed in ~/.zsh.custom_scripts folder
* tmux config
    * includes a fix for colour scheme in Vim
    * Mouse scroll and selection (with option) key is enabled
* Vim config using vundle
    * Alias and config link to neovim
    * NERDTree for file exploring
    * in-line results for substitution command (set inccommand=split)
    * vim-surround (with vim-repeat) for easy editing of surrounding delimiters
    * UltiSnips plugin for easy snippet insertion on TAB
    * matchit for better % matching - tags, if/else clauses, etc.
    * CtrlP plugin for easy file access (use ,t to open the selection pop-up)
    * vim-signify for showing diff on lines within the editor
    * vim-commentary for easy line commenting
    * vim-airline for improved status line
    * vim-bufferline for easy display of used buffers in the status line
    * vim-easymotion for vimperator-like finding (use ,,\<motion\>, e.g. ,,w)
    * sparkup for Zen Coding (try div#header[param=value] > ul > li\*3 < p{Waaat?} and hit Ctrl+E)
    * no swap files generated
    * Ag (using ack.vim with changed config) for project-wide searching
    * syntastic for on-the-go syntax checking
    * vim-ruby for better Ruby support
    * vim-rails for better Rails support
    * vim-fugitive for in-Vim Git support
    * vim-endwise for automatic adding of ending clauses - e.g. 'end' in Ruby
    * delimitMate for insertion of closing quotes, brackets, etc.
    * xmpfilter for in-line Ruby execution (requires rcodetools gem installed)
    * Dockerfile.vim for Dockerfile syntax highlighting
    * vim-space plugin to repeat motions with space in normal mode
    * switch.vim for easy changing of Hash style in Ruby
    * taglist.vim for sourcecode tag navigation
    * NrrwRgn for region editing
    * vim-trailing-whitespace for easy removal of trailing whitespace using :FixWhitespace
    * vim-jsx for JSX support
    * neoterm for easier interaction with NeoVim's builtin in :terminal

## What's not included

I used to have a few custom git shortcuts, but now I resort to these provided by [oh-my-zsh's git plugin](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git).

## Pre-requisites

You'll need to have:

* Git (obviously)
* Zsh for running the install script
* asdf installed with ruby and python

## Installation

Fetch the repo with submodules and run the install script:

    $ git clone --recurse-submodules -j8 git@github.com:tomaszj/dotfiles.git YOUR_FOLDER
    $ cd YOUR_FOLDER
    $ install/install.zsh

