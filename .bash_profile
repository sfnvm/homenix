# +------+
# | AUTO |
# +------+
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# +----------------+
# | BINARY SOURCES |
# +----------------+
# PIP bin
export PIPBIN="$HOME/.local/bin"
# YARN bin
export YARNBIN="$(yarn global bin)"
# GO bin
export GOROOT="/usr/local/go"
# GO path
export GOPATH="$HOME/src-code/go"
# JAVA path
export JAVA_HOME="/usr/lib/jvm/default-java"
# LOAD ALL INTO $PATH
export PATH=$PATH:$PIPBIN
export PATH=$PATH:$YARNBIN
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$JAVA_HOME/bin


# +-----------+
# | UTILITIES |
# +-----------+
# alias command to clear terminal
alias cl="clear && printf '\e[3J'"
# alias dgit
alias dgit='git --git-dir ~/.homenix/.git --work-tree=$HOME'
