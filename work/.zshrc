source $ZSH/oh-my-zsh.sh

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/wsl.zsh

# keychain
/usr/bin/keychain --nogui ~/.ssh/id_rsa
source ~/.keychain/$(hostname)-sh

# update hosts file
# echo "run ~/.localhost.sh if you need to reset local hosts"
#~/.localhost.sh
type >/dev/null ~/.wsl && sudo ~/.wsl

eval "$(starship init zsh)"

