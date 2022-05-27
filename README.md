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

## SSH 

### 1Password Agent

[Documentation](https://developer.1password.com/docs/ssh)

```
mkdir ~/.ssh
cat <<EOF >~/.ssh/config
Host *
	IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
EOF
```

### YubiKey

```
brew install libfido2 openssh
```

#### Generate Key

[GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key-for-a-hardware-security-key)


```
ssh-keygen -t ed25519-sk -C "your_email@example.com"
```

```
mkdir ~/.ssh
cat <<EOF >~/.ssh/config
Host *
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519_sk
EOF
```