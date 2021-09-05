# Dotfiles

## Repository
***

**The repository contains**
- Bash
    - Configuration file
    - [PureLine - A Pure Bash Powerline PS1 Command Prompt](https://github.com/marmal95/dotfiles/tree/master/.bash_libs/pureline)
    - Bash utils
- Tmux
    - Configuration file
    - [Gruvbox](https://github.com/morhetz/gruvbox) based Tmux theme


## Requirements
***
By default both bash prompt and tmux uses powerline symbols thus any font [Powerline font](https://github.com/powerline/fonts) is required.


## Installation
***

### Full installation

**Please be aware the below will override your current ~/.bashrc configuration.**

```sh
git clone https://github.com/marmal95/dotfiles.git 
rsync -av --exclude=".git" --exclude="README.md" dotfiles/ ~
rsync -av ~/.bash_libs/pureline/configs/powerline_gruvbox.conf ~/.pureline.conf
```

### PureLine installation

**The below version will provide only support for PureLine without impacting your current bash configuration.**

```sh
git clone https://github.com/marmal95/dotfiles.git 

rsync -av dotfiles/.bash_libs/pureline ~   
rsync -av dotfiles/.bash_libs/pureline/configs/powerline_gruvbox.conf ~/.pureline.conf
echo "[ -f ~/pureline/pureline ] && source ~/pureline/pureline ~/.pureline.conf" >> ~/.bashrc
```

## Navigation cheat sheet

Prefix key - by default is set to <kbd>Control-a</kbd>

<i>Prefix</i> - <kbd>h/j/k/l</kbd> - panes navigation  
<i>Prefix</i> - <kbd>|</kbd> - vertical split  
<i>Prefix</i> - <kbd>_</kbd>/<kbd>-</kbd> - horizontal split  
<i>Prefix</i> - <kbd>n/p</kbd> - switch to next/previous window (optionally with <kbd>Shift+Left/Right</kbd>)
