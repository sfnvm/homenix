export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="half-life"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

plugins=(git fzf ubuntu)

source $ZSH/oh-my-zsh.sh
source /etc/zsh_command_not_found

export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

#######
# EXT #
#######
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#eval "$(zoxide init --cmd cd zsh)"

###############
### ALIASES ###
###############
if [ -f ~/.zshrc.aliases.zshrc ]; then
    . ~/.zshrc.aliases.zshrc
fi
if [ -f ~/.zshrc.paths.zshrc ]; then
    . ~/.zshrc.paths.zshrc
fi
