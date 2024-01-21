#!/bin/bash

# Homebrew installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Homebrew bundle
brew bundle

# Oh-my-zsh installation
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Git configuration
read -p "Enter your Git user name: " git_username
read -p "Enter your Git user email: " git_useremail

# Check for existing Git configurations
existing_username=$(git config --get user.name)
existing_useremail=$(git config --get user.email)

if [ -n "$existing_username" ] || [ -n "$existing_useremail" ]; then
    read -p "Existing Git configurations found. Do you want to update them? (y/n): " update_git_config
    if [ "$update_git_config" = "y" ]; then
        git config --global user.name "$git_username"
        git config --global user.email "$git_useremail"
        echo "Git configuration updated."
    else
        echo "Skipped Git configuration."
    fi
else
    git config --global user.name "$git_username"
    git config --global user.email "$git_useremail"
    echo "Git configuration completed."
fi
