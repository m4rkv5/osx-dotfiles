# osx-dotfiles

## Installation

Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off
```

Install stow

```bash
brew install stow
```

Clone this repository in your userfolder

```bash
cd ~/
git clone git@github.com:m4rkv5/osx-dotfiles.git ~
```

Run `stow` to symlink everything or just select what you want

```bash
stow --no-folding */ # Every subfolder
```

```bash
stow --no-folding zsh # Single subfolder
```

## Homebrew

Install all content from ~/Brewfile 

```
brew bundle --file=~/.private/Brewfile
```

Dump a Brewfile of current brew/cask/mas entries

```
brew bundle dump --file=~/.private/Brewfile --force
```

Match current system configuration to brewfile
```
brew bundle --file=~/.private/Brewfile --force cleanup
```
[brew-bundle-brewfile-tips.md](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f#file-brew-bundle-brewfile-tips-md)

## System settings

```bash
chmod +x settings.sh
./settings.sh
```

## Git

Set your username:
```
git config --global user.name $USERNAME
```
Set your email address:
```
git config --global user.email $MAIL
```

