#!/usr/bin/env bash
# Script setting up git aliases

git config --global --replace-all alias.hist "log --pretty=format:'%C(yellow)%h | %ad |%C(red)%d %Creset%s [%C(red)%an%Creset]' --graph --abbrev-commit --date=short"
git config --global --replace-all alias.ci commit
