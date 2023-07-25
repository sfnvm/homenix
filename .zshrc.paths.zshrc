# +----------------+
# | BINARY SOURCES |
# +----------------+
# My ln binary links
export HOMEBIN="$HOME/bin"
export PATH=$PATH:$HOMEBIN

export USR_LOCAL_BIN="/usr/local/bin"
export PATH=$PATH:$USR_LOCAL_BIN

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

# Kafka
export KAFKA_VERSION="kafka_2.13-3.6.0"
export KAFKA_PATH="$HOME/bin/$KAFKA_VERSION"
export PATH=$PATH:$KAFKA_PATH/bin

# IntelliJ
export IDEA_PATH="/home/sfnvm/ide/idea"
export PATH=$PATH:$IDEA_PATH/bin
alias idea="idea.sh"
export DATAGRIP_PATH="/home/sfnvm/ide/datagrip"
export PATH=$PATH:$DATAGRIP_PATH/bin
alias datagrip="datagrip.sh"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# +--------------+
# | M$ UTILITIES |
# +--------------+
if uname -a | grep -q 'WSL2'; then
    # Export Windows Home folder
    export WH="/mnt/c/Users/trung"
    # Alias Notepad++
    alias npp="/mnt/c/Program\ Files/Notepad++/notepad++.exe"
    # Alias Intellij Idea
    alias idea="/mnt/c/Program\ Files/JetBrains/IntelliJ\ IDEA/bin/idea64.exe"
    # Alias Clipboard
    alias cpy="tr -d '\n' | clip.exe"
    # Alias Explorer.exe
    alias open="explorer.exe"
fi
