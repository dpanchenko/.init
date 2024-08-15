#!/bin/bash

# Install HomeBrew
sudo mkdir -p /opt/homebrew
sudo chown -R kocmoc:staff /opt/homebrew
cd /opt/homebrew
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /opt/homebrew

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup configs
ln -sf ~/.init/.gitconfig ~/.gitconfig
ln -sf ~/.init/.gitcommit ~/.gitcommit
ln -sf ~/.init/.gitignore ~/.gitignore
ln -sf ~/.init/.oh-my-zsh/themes/laptop.zsh-theme ~/.oh-my-zsh/themes/laptop.zsh-theme
ln -sf ~/.init/.zshrc ~/.zshrc

# Setup software
xcode-select --install
brew bundle
