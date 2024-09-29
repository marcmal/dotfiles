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

[ -f ~/.bash/work.sh ] && source ~/.bash/work.sh
[ -f ~/.bash/utils.sh ] && source ~/.bash/utils.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fzf --bash)"
