# auto-setup

Set up Mac for development with homebrew. I have organized what I usually use. 

## Install

### Install with this repo

Setup proceeds in the following order.

1. Install homebrew
2. Install homebrew packages
3. Install others using shell script

```zsh
sh install.sh
```

If you have a mac that is currently using homebrew, I recommend extracting the package directly in the following way.

### Backup my own homebrew package

```zsh
brew bundle dump
cat brewfile

# in own mac
brew install
```
