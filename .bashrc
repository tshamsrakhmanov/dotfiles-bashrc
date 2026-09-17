# If not running interactively, don't do anything
[[ $- != *i* ]] && return

################
# HISTORY
################

# p.1: set up immediate save of history (for tmux)
shopt -s histappend
# p.2: add command flags to work bulletproof
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

################
# ALIASES
################

# sample of dir for clean
#alias l='ls -lh --color=auto --group-directories-first'
#alias ll='ls -lhA --color=auto --group-directories-first'

# sample of dir for nice
alias l="eza -l --color=always --group-directories-first --icons"
alias ll="eza -al --color=always --group-directories-first --icons"

# basics
alias grep='grep --color=auto'
alias zz='exit'
alias ..='cd .. && l'

# arch specific
alias pp='sudo pacman -Suy '

# gits
alias ga='git add .'
alias gp='git push origin main'

# systems
alias ssn='sudo shutdown now'
alias srn='sudo reboot now'

# history
alias ht='cat ~/.bash_history | tail -n '
alias hg='cat ~/.bash_history | grep '

# git checker alias
alias gg='bash ~/git_checker.sh'
alias gpush='read -p "Commit message: " msg; git add .; git commit -m "$msg"; git push origin main'


# to find processe
alias qq='ps -eo pid,command | grep'

##############
# PROMPT
##############

# prompt
PS1='\[\033[0;032m\]┌\[\033[00m\]\[\033[0;31m\][\w]\[\033[00m\]\n\[\033[0;32m\]└──> \[\033[00m\]'

#######################
# GENERAL EXPORTS
#######################

# export to run wpaperd
export PATH="$PATH:~/wpaperd/target/release/"
# export for general path of rust cargoes
export PATH="$HOME/.cargo/bin:$PATH"

############
# INIT
############
clear
cd ~
