#!/usr/bin/env zsh
### Zsh configuration



export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


### aliases

alias pi='ssh m@192.168.1.53'
alias ma='ssh markus_admin@192.168.169.50'
