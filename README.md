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
stow */ # Every subfolder
```

```bash
stow zsh # Single subfolder
```

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