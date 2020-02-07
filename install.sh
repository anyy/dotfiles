#!/bin/sh

# Create required directories
mkdir -p ~/.config/nvim
mkdir -p ~/.ctags.d

# Create symlinks
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.tigrc ~/.tigrc
ln -s ~/dotfiles/.zshenv ~/.zshenv
ln -s ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/.config/nvim/dein.toml ~/.config/nvim/dein.toml
ln -s ~/dotfiles/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -s ~/dotfiles/.ctags.d/go.ctags ~/.ctags.d/go.ctags
ln -s ~/dotfiles/.curlrc ~/.curlrc
ln -s ~/dotfiles/.alacritty.yml ~/.alacritty.yml
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# Sets macOS defaults
source ~/dotfiles/.macos

