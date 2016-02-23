TJ's dotfiles
=============

Yet another personal dotfiles repo.

## What's included

* Zsh config using zprezto
    * all scripts (such as exports, paths, etc.) can be placed in ~/.zsh.scripts folder
* Set (short for now) of git aliases, set up by script
    * git hist - for easy and human-readable git history
    * git ci - usual alias for git commit
    * git ci - usual alias for git checkout
    * git st - git status
* tmux config
    * includes a fix for colour scheme in Vim
    * Mouse scroll and selection (with option) key is enabled
* Vim config using vundle
    * Alias and config link to neovim
    * NERDTree for file exploring
    * vim-snipmate plugin for easy snippet insertion on TAB
    * vim-surround (with vim-repeat) for easy editing of surrounding delimiters
    * CtrlP plugin for easy file access (use ,t to open the selection pop-up)
    * vim-airline for improved status line
    * vim-bufferline for easy display of used buffers in the status line
    * vim-easymotion for vimperator-like finding (use ,,\<motion\>, e.g. ,,w)
    * sparkup for Zen Coding (try div#header[param=value] > ul > li\*3 < p{Waaat?} and hit Ctrl+E)
    * \<F2\> For toggling paste mode
    * no swap files generated
    * matchit for better % matching - tags, if/else clauses, etc.
    * vim-ruby for better Ruby support
    * vim-rails for better Rails support
    * vim-fugitive for in-Vim Git support
    * syntastic for on-the-go syntax checking
    * vim-signify for showing diff on lines within the editor
    * vim-endwise for automatic adding of ending clauses - e.g. 'end' in Ruby
    * delimitMate for insertion of closing quotes, brackets, etc.
    * Ack for project-wide searching
    * vim-commentary for easy line commenting
    * xmpfilter for in-line Ruby execution
    * Dockerfile.vim for Dockerfile syntax highlighting
    * vim-space plugin to repeat motions with space in normal mode
    * switch.vim for easy changing of Hash style in Ruby
    * taglist.vim for sourcecode tag navigation
    * NrrwRgs for region editing
    * vim-trailing-whitespace for easy removal of trailing whitespace using :FixWhitespace

## Pre-requisites

You'll need to have:

* Git (obviously)
* Zsh for running the install script

## Installation

Fetch the repo with submodules and run the install script:

    $ git clone --recursive https://github.com/tomaszj/dotfiles YOUR_FOLDER
    $ cd YOUR_FOLDER
    $ install/install.sh

