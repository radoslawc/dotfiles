HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory
setopt extended_history
setopt histignoredups
bindkey -e
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/racm/.zshrc'

autoload -Uz compinit
compinit

export EDITOR=vim

autoload -U auto_cd

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
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias -g ND="*(/om[1])"
alias -g NF="*(.om[1])"
alias -g uxterm="xterm"
alias -s pdf="evince"
alias -s odt="libreoffice"
alias -g v="vim"
alias -g c="cdr"

function mcd() {
	mkdir -p "$1" && cd "$1";
}


####


autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs



####vcs########
autoload -U vcs_info
zstyle ':vcs_info:*' enable git svn hg
zstyle ':vcs_info:hg*' actionformats "(%s|%a)[%i%u %b %m]"
zstyle ':vcs_info:*' check-for-changes true

#################

autoload -U colors && colors

precmd() {
    vcs_info
}

setopt prompt_subst


#PROMPT='
#%{%F{yellow}%K{black}%}%d%{%F{green}%}% ${vcs_info_msg_0_} %E%{%f%k%b%}
#%{%K{black}%}  %#%{%f%k%b%} '
PROMPT='
%{%F{green}%d%{%f%}%} ${vcs_info_msg_0_}
%# '

#RPROMPT='?%{%B%F{red}%}%?%{%f%k%b%}'

JAVA_HOME=/home/racm/bin/jdk1.6.0_37
MAVEN_HOME=/home/racm/bin/apache-maven-3.0.4
JMETER_HOME=/home/racm/bin/apache-jmeter-2.8
ANT_HOME=/home/racm/bin/apache-ant-1.8.4
export JAVA_HOME
export MAVEN_HOME
export JMETER_HOME
export ANT_HOME
PATH=/home/racm/bin/jdk1.6.0_37/bin:/home/racm/bin/apache-maven-3.0.4/bin:$PATH:/home/racm/bin/apache-jmeter-2.8/bin:/home/racm/bin/apache-ant-1.8.4/bin/
export PATH

