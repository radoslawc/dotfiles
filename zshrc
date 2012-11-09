# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
bindkey -e
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit

#Some functions, like _apt and _dpkg, are very slow. 
#You can use a cache in order to proxy the list of 
#results (like the list of available debian packages) Use a cache:

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

zstyle ':completion:*' menu yes select
zstyle ':completion:*' force-list always
#Fuzzy matching of completions for when you mistype them:

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

#Ignore completion functions for commands you don’t have:
zstyle ':completion:*:functions' ignored-patterns '_*'

autoload -U age
age
autoload -U zsh-mime-setup
zsh-mime-setup
#alias

alias l="ls -lha --color=always"
alias t="tree"
alias p="print -l"


####vcs
autoload -U vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}

setopt prompt_subst

#PROMPT=$'\e[0;31m%d \e[0m  
#%# '

PROMPT='%{%f%k%b%}
%{%K{black}%B%F{green}%}%n%{%B%F{blue}%}@%{%B%F{cyan}%}%m%{%B%F{green}%} %{%b%F{yellow}%K{black}%}%~%{%B%F{green}%}%E%{%f%k%b%}
%{%K{black}%}%{%K{black}%} %#%{%f%k%b%} '

RPROMPT='!%{%B%F{cyan}%}%!%{%f%k%b%}'

# End of lines added by compinstall
JAVA_HOME=/opt/java6
export JAVA_HOME
PATH=$PATH:/opt/java6/bin
