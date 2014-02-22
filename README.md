TJ's dotfiles
=============

Yet another personal dotfiles repo.

## What's included

* Zsh config using zprezto
    * all scripts (such as exports, paths, etc.) can be placed in ~/.zsh.scripts folder
* Set (short for now) of git aliases, set up by script
    * git hist - for easy and human-readable git history
    * git ci - usual alias for git commit
* Vim config using vundle
    * vim-snipmate plugin for easy snippet insertion on TAB
    * vim-surround (with vim-repeat) for easy editing of surrounding delimiters
    * Command-t plugin for easy file access (use ,t to open the selection pop-up, Ctrl+C to dismiss it)
    * vim-airline for improved status line
    * vim-bufferline for easy display of used buffers in the status line
    * vim-easymotion for vimperator-like finding (use ,,\<motion\>, e.g. ,,w)
    * sparkup for Zen Coding (try div#header[param=value] > ul > li\*3 < p{Waaat?} and hit Ctrl+E)
    * yankstack for cycling through last yank items when pasting (use Ctrl+p after pasting)
    * remap for ';' to mimic ':' without using Shift key
    * \<F2\> For toggling paste mode
    * no swap files generated
    * matchit for better % matching - tags, if/else clauses, etc.
    * vim-scala for better Scala support
    * vim-ruby for better Ruby support
    * vim-rails for better Rails support
    * vim-fugitive for in-Vim Git support
    * syntastic for on-the-go syntax checking
    * vim-signify for showing diff on lines within the editor
    * vim-endwise for automatic adding of ending clauses - e.g. 'end' in Ruby
    * delimitMate for insertion of closing quotes, brackets, etc.
    * Ack for project-wide searching
    * vim-commentary for easy line commenting

* Simple installation script, which also compiles Command-t C extension

## Pre-requisites

You'll need to have:

* Git (obviously)
* Zsh for running the install script

## Installation

Fetch the repo with submodules and run the install script:

    $ git clone --recursive https://github.com/tomaszj/dotfiles YOUR_FOLDER
    $ cd YOUR_FOLDER
    $ install/install.sh

