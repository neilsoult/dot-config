source $ZSH/oh-my-zsh.sh

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh

# keychain
#/usr/bin/keychain --nogui ~/.ssh/id_ed25519
#source ~/.keychain/$(hostname)-sh

eval "$(starship init zsh)"
