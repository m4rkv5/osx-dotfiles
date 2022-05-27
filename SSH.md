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

### Copy SSH Key to server

```
ssh-copy-id -i ~/.ssh/id_ed25519_sk.pub -p 22 user@1.1.1.1
```