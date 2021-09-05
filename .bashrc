if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias ll='ls -al'
alias ..='cd ..'

export EDITOR=nvim

[ -f ~/.bash_libs/cplane.sh ] && source ~/.bash_libs/cplane.sh
[ -f ~/.bash_libs/utils.sh ] && source ~/.bash_libs/utils.sh
# [ -f ~/.bash_libs/prompt.sh ] && source ~/.bash_libs/prompt.sh
[ -f ~/.bash_libs/pureline/pureline ] && source ~/.bash_libs/pureline/pureline ~/.pureline.conf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
