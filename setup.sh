#!/usr/bin/env bash

# Before running...
message="Before running:
- Install zsh and prezto (https://github.com/sorin-ionescu/prezto)
- That's it so far...

CTRL-C to abort or any other key to symlink config files
"
read -rsp "${message}" -n1 key

# Create symlinks
for f in zshrc zpreztorc vimrc
do
  [ -f ~/.$f ] && rm ~/.$f
  ln -s ~/dotfiles/$f ~/.$f
done
