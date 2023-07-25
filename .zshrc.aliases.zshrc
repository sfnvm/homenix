# alias command to clear terminal
alias cl="clear && printf '\e[3J'"

# docker
alias dcud="docker compose up -d"
alias dcd="docker compose down"
alias dcs="docker compose stop"
alias dcb="docker compose build"
alias doco="docker compose"

# alias hgit
alias hgit='git --git-dir ~/.homenix/.git --work-tree=$HOME'

# alias kcat
alias kc='docker run -it --network=host edenhill/kcat:1.7.1'