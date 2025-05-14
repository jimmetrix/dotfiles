# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jimmetrix/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
PROMPT='[ %? ]-[ %t %D ]-[ %B%n@%m%b ]-[ %~ ]
%# '

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
alias dot='cd ~/.dotfiles/'
alias l='ls -a'
