#!/bin/sh

$dotfilesdir='dotfiles'

cd ~/$dotfilesdir
# git submodule init
# git submodule update

ln -s ~/$dotfilesdir/editorconfig/editorconfig ~/.editorconfig
ln -s ~/$dotfilesdir/git/gitignore             ~/.gitignore
ln -s ~/$dotfilesdir/git/gitconfig             ~/.gitconfig
ln -s ~/$dotfilesdir/homebrew/brew-aliases     ~/.brew-aliases
ln -s ~/$dotfilesdir/npm/npmrc                 ~/.npmrc
ln -s ~/$dotfilesdir/phoenix/index.js        ~/.phoenix.js
touch ~/.hushlogin
