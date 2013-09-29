#!/bin/zsh
# Script installing TJ's dotfiles in your home folder

echo "Installing TJ's dotfiles..."

pushd . 1> /dev/null

# Find the directory that this script is running from
INSTALL_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE:-$0}" )" && pwd )"
cd $INSTALL_SCRIPT_DIR/..

WORKING_DIR="$(pwd)"

if find $WORKING_DIR/zsh/zprezto -maxdepth 0 -empty | read v; then 
  echo "Custom zprezto not present, fetching the default one"
  git clone --recursive https://github.com/sorin-ionescu/prezto.git $WORKING_DIR/zsh/zprezto 
fi

# Link to vim config files
ln -nfs $WORKING_DIR/vim/vimrc $HOME/.vimrc

# Link to zsh config files using zprezto
setopt EXTENDED_GLOB
for rcfile in $WORKING_DIR/zsh/zprezto/runcoms/^README.md(.N); do
  ln -nfs "$rcfile" "$HOME/.${rcfile:t}"
done

ln -fs $WORKING_DIR/zsh/zprezto $HOME/.zprezto 

popd 1> /dev/null

echo "Done!"

