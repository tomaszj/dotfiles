TJ's dotfiles
=============

Yet another personal dotfiles repo.

## What's included

* Zsh config using zprezto
    * all scripts (such as exports, paths, etc.) can be placed in ~/.zsh.scripts folder
* Vim config using vundle
    * vim-snipmate plugin for easy snippet insertion on TAB
    * vim-surround (with vim-repeat) for easy editing of surrounding delimiters
    * vim-airline for improved status line
    * vim-easymotion for vimperator-like finding (use ,,\<motion\>, e.g. ,,w)
    * sparkup for Zen Coding (try div#header[param=value] > ul > li\*3 < p{Waaat?} and hit Ctrl+E)
    * remap for ';' to mimic ':' without using Shift key
    * \<F2\> For toggling paste mode
    * no swap files generated
* Simple installation script

## Pre-requisites

You'll need to have:

* Git (obviously)
* Zsh for running the install script

## Installation

Fetch the repo with submodules and run the install script:

    $ git clone --recursive https://github.com/tomaszj/dotfiles YOUR_FOLDER
    $ cd YOUR_FOLDER
    $ install/install.sh

