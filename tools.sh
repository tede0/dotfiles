#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Alacritty
brew install alacritty

# Install Tmux
brew install tmux

# Install Tpm for Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Print completion message
echo "Installation completed."

