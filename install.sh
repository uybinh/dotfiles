#!/bin/sh

dotfilesdir='dotfiles'

# support function to move file
_move_existed_file() {
  file=$1
  if [ -L ~/$file ]; then
    rm ~/$file
    
    elif [ -e ~/$file ]; then
    mv ~/$file ~/$file.back
    
  fi
}

# cd $HOME/$dotfilesdir
# git submodule init
# git submodule update

# symlink .zshrc
_move_existed_file ".zshrc"
ln -s $HOME/$dotfilesdir/zshrc                 $HOME/.zshrc

_move_existed_file ".zsh"
ln -s $HOME/$dotfilesdir/zsh                   $HOME/.zsh

# symlink .aliases
_move_existed_file ".aliases"
ln -s $HOME/$dotfilesdir/aliases/aliases           $HOME/.aliases

# _move_existed_file ".editorconfig"
# ln -s $HOME/$dotfilesdir/editorconfig/editorconfig $HOME/.editorconfig

_move_existed_file ".vimrc"
ln -s $HOME/$dotfilesdir/vimrc                 $HOME/.vimrc

# symlin .gitignore
_move_existed_file ".gitignore"
ln -s $HOME/$dotfilesdir/git/gitignore             $HOME/.gitignore

# symlink .gitconfig
_move_existed_file ".gitconfig"
ln -s $HOME/$dotfilesdir/git/gitconfig             $HOME/.gitconfig

# symlink brew-aliases
_move_existed_file "brew-aliases"
ln -s $HOME/$dotfilesdir/homebrew/brew-aliases     $HOME/.brew-aliases

# symlink eslint
_move_existed_file ".eslintrc"
ln -s $HOME/$dotfilesdir/eslint/eslintrc     $HOME/.eslintrc
