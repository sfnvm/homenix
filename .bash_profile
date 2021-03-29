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
# My ln binary links
export HOMEBIN="$HOME/bin"
export PATH=$PATH:$HOMEBIN

# PIP bin
export PIPBIN="$HOME/.local/bin"
export PATH=$PATH:$PIPBIN

# YARN bin
export YARNBIN="$(yarn global bin)"
export PATH=$PATH:$YARNBIN

# GO bin
export GOROOT="/usr/local/go"
export PATH=$PATH:$GOROOT/bin

# GO path
export GOPATH="$HOME/src-code/go"
export PATH=$PATH:$GOPATH/bin

# JAVA path // OS diff
# export JAVA_HOME="/usr/lib/jvm/default-java"
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
export PATH=$PATH:$JAVA_HOME/bin


# +-----------+
# | UTILITIES |
# +-----------+
# alias command to clear terminal
alias cl="clear && printf '\e[3J'"
# alias dgit
alias dgit='git --git-dir ~/.homenix/.git --work-tree=$HOME'

# +--------------+
# | M$ UTILITIES |
# +--------------+
if uname -a | grep -q 'WSL2'; then
    # Export current Tax root source
    export TAX="/mnt/c/Users/sfnvm/src-code/teca/tax"
    # Export Windows Home folder
    export WH="/mnt/c/Users/sfnvm"
    # Alias Notepad++
    alias npp="/mnt/c/Program\ Files/Notepad++/notepad++.exe"
    # Alias Intellij Idea
    alias idea="/mnt/c/Program\ Files/JetBrains/IntelliJ\ IDEA\ 2020.3.2/bin/idea64.exe"
    # Alias Clipboard
    alias cpy="tr -d '\n' | clip.exe"
    # Alias Explorer.exe, MacOS like style
    alias open="explorer.exe"
fi

# +------------+
# | WSL Issues |
# +------------+
# WSL such, it load the profile file before .bashrc :/
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
