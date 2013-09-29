#!/bin/bash
# Script installing TJ's dotfiles in your home folder

echo "Installing TJ's dotfiles..."

pushd . 1> /dev/null

# Find the directory that this script is running from
INSTALL_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $INSTALL_SCRIPT_DIR/..

WORKING_DIR=$(pwd)

# Link to vim config files
ln -nfs $WORKING_DIR/vim/vimrc ~/.vimrc

# Link to zsh config files
ln -nfs $WORKING_DIR/zsh/zshrc ~/.zshrc

popd 1> /dev/null

echo "Done!"

