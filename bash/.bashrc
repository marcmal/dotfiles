if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

PATH=$HOME/.cargo/bin:$PATH
PATH=$HOME/.local/bin:$PATH

alias ..='cd ..'
alias 'ls'='eza --color=always --icons=always'
alias 'll'='eza --color=always --icons=always -al'

export EDITOR=nvim
export BAT_THEME='gruvbox-dark'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.bash/utils.sh ] && source ~/.bash/utils.sh
[ -f ~/.bash/work.sh ] && source ~/.bash/work.sh

eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fzf --bash)"
