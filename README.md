# auto-setup

Set up your Mac for development with Homebrew. This repository contains a curated list of tools and applications I commonly use.

## Prerequisite

```bash
# Create, copy and paste the code from the respective files.
touch Brewfile
touch install.sh

# Or if you have git installed
git clone https://github.com/zaiyou12/auto-setup.git
cd auto-setup
```

## Setup

```bash
bash install.sh
```

Installation proceeds in the following order.

1. Install homebrew
2. Install homebrew packages
3. Install others using shell script

### Git configuration

During the setup, you will be prompted to enter your Git user name and email. This is essential for configuring Git globally on your system. If you already have existing Git configurations, you will be given the option to update them.

## Backup

If you are currently using Homebrew on another Mac, it's recommended to back up your existing packages. Use the following commands:

```bash
# Backup your own Homebrew packages
brew bundle dump
cat Brewfile

# On another Mac, restore the packages
brew bundle
```
