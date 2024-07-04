if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

PATH=$HOME/.cargo/bin:$PATH
PATH=$HOME/.local/bin:$PATH

alias ..='cd ..'
alias 'ls'='eza --color=always --icons=always'
alias 'll'='eza -al --color=always --icons=always'

export EDITOR=nvim
export BAT_THEME='gruvbox-dark'

[ -f ~/.bash_libs/work.sh ] && source ~/.bash_libs/work.sh
[ -f ~/.bash_libs/utils.sh ] && source ~/.bash_libs/utils.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(starship init bash)"
