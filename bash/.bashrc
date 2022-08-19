if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias ll='ls -al'
alias ..='cd ..'

export EDITOR=nvim
export BAT_THEME='gruvbox-dark'

[ -f ~/.bash_libs/work.sh ] && source ~/.bash_libs/work.sh
[ -f ~/.bash_libs/utils.sh ] && source ~/.bash_libs/utils.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/amro.omp.json)"
