#!/bin/bash
# Script installing TJ's dotfiles in your home folder

pushd .

# Find the directory that this script is running from
WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $WORKING_DIR/..

echo $(pwd)

popd
