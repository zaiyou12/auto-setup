# auto-setup

Set up Mac for development with homebrew. I have organized what I usually use. 

## Install

```zsh
# Install with scripts
touch Brewfile
touch install.sh

# After copy and paste code form github
sh install.sh
```

Setup proceeds in the following order.

1. Install homebrew
2. Install homebrew packages
3. Install others using shell script

## Backup

If you have a mac that is currently using homebrew, I recommend extracting the package directly in the following way.


```zsh
# Backup my own homebrew package
brew bundle dump
cat brewfile

# in another mac
brew bundle
```
