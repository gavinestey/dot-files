eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
export PATH=$(brew --prefix python)/libexec/bin:$PATH
export BASH_SILENCE_DEPRECATION_WARNING=1
export AWKLIBPATH=$(brew --prefix gawkextlib-csv)/lib/gawk

# these two make fpp & rg work better togther and open in tabs
export FPP_EDITOR='vim -p'
alias rg='rg --line-number'

# general aliases & functions
alias flushdns='sudo killall -HUP mDNSResponder && echo Flushed DNS'
alias clear='tput init; clear'
alias r='fc -s'
function cheat() { curl cht.sh/$1; }
function genpasswd() { openssl rand 150 | LC_CTYPE=C tr -dc '[[:alnum:]!@#$%^&]' | tr -d iIlLOo0 | cut -c 1-${1:-12}; }

# setup history to work better
shopt -s histappend
shopt -s cmdhist
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$"\n"}history -a; history -c; history -r"
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth
export HISTIGNORE='ls:bg:fg:history'
export HISTTIMEFORMAT='%F %T '

shopt -s dotglob      # include dot (.) files
shopt -s nocaseglob   # case-insensitive
shopt -s extglob      # enable extended pattern matching

set -o vi             # enable vi mode

