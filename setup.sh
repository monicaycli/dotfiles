#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# detect hidden files
shopt -s dotglob

# symlink dotfiles
for filename in settings/*; do
	  ln -fs "$DIR/$filename" "$HOME/$(basename "$filename")"
done

# copy sublime settings
for filename in sublime/*; do
  cp -i "$filename" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/$(basename "$filename")"
done

# Specify the preferences directory for iTerm
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$DIR/iTerm"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# turn off detect hidden files
shopt -u dotglob

# source profile
source $HOME/.bash_profile
