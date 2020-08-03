# Homenix
Save configs files for new unix env setup

# Source
[dgit](https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/)

# TL;DR
Add this line to .bashrc | .zshrc | .bash_profile | ..etc
```console
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
```
