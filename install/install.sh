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
echo "Linking ~/.vimrc and ~/.vim folder"
ln -nfs $WORKING_DIR/vim/vimrc $HOME/.vimrc
ln -nfs $WORKING_DIR/vim/gvimrc $HOME/.gvimrc
ln -nfs $WORKING_DIR/vim/vimrc.bundles $HOME/.vimrc.bundles
ln -nfs $WORKING_DIR/vim $HOME/.vim

# Link to zsh config files using zprezto
setopt EXTENDED_GLOB
for rcfile in $WORKING_DIR/zsh/zprezto/runcoms/^README.md(.N); do
  echo "Linking ~/.${rcfile:t}"
  ln -nfs "$rcfile" "$HOME/.${rcfile:t}"
done

echo "Linking ~/.zprezto folder"
ln -fs $WORKING_DIR/zsh/zprezto $HOME/.zprezto

# Create a folder for user zsh scripts
USER_ZSH_SCRIPTS_PATH="$HOME/.zsh.scripts"
if [[ ! -d $USER_ZSH_SCRIPTS_PATH ]]; then
  echo "Creating ~/${USER_ZSH_SCRIPTS_PATH:t} folder for user scripts"
  mkdir $USER_ZSH_SCRIPTS_PATH
fi

echo "Installing vim bundles"
vim -u $HOME/.vim/vimrc.install +BundleInstall +qall

if [[ -d "$HOME/.vim/bundle/command-t" ]]; then
  echo "Building C extension for command-t vim plugin"
  COMMAND_T_DIR="$HOME/.vim/bundle/command-t/ruby/command-t"
  ruby "$COMMAND_T_DIR/extconf.rb" 1> /dev/null
  cd $COMMAND_T_DIR
  make 1> /dev/null
fi

popd 1> /dev/null

echo "Done!"

