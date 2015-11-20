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

# Same for neovim
ln -nfs $WORKING_DIR/vim/vimrc $HOME/.nvimrc
ln -nfs $WORKING_DIR/vim/vimrc.bundles $HOME/.nvimrc.bundles
ln -nfs $WORKING_DIR/vim $HOME/.nvim
mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# Link to tmux config file
echo "Linking ~/.tmux.conf"
ln -nfs $WORKING_DIR/tmux/tmux.conf $HOME/.tmux.conf

# Link to zsh config files using zprezto
setopt EXTENDED_GLOB
for rcfile in $WORKING_DIR/zsh/zprezto/runcoms/^README.md(.N); do
  echo "Linking ~/.${rcfile:t}"
  ln -nfs "$rcfile" "$HOME/.${rcfile:t}"
done

echo "Linking ~/.zprezto folder"
ln -fs $WORKING_DIR/zsh/zprezto $HOME/.zprezto

# Create a folder for user zsh scripts
USER_ZSH_SCRIPTS_PATH="$HOME/.zsh.custom_scripts"
if [[ ! -d $USER_ZSH_SCRIPTS_PATH ]]; then
  echo "Creating ~/${USER_ZSH_SCRIPTS_PATH:t} folder for user scripts"
  mkdir $USER_ZSH_SCRIPTS_PATH
fi

# Create an empty folder for dotfiles zsh scripts
DOTFILES_ZSH_SCRIPTS_PATH="$HOME/.zsh.dotfiles_scripts"
if [[ -d $DOTFILES_ZSH_SCRIPTS_PATH ]]; then
  rm -rf $DOTFILES_ZSH_SCRIPTS_PATH
fi

mkdir $DOTFILES_ZSH_SCRIPTS_PATH

# Populate the startup scripts
cp -r $WORKING_DIR/startup_scripts/* $DOTFILES_ZSH_SCRIPTS_PATH/


echo "Installing vim bundles"
vim -u $HOME/.vim/vimrc.install +BundleInstall +qall

# source "$WORKING_DIR/git/set_git_aliases.sh"

popd 1> /dev/null

echo "Done!"

