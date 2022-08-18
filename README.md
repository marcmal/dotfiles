# Dotfiles

## Repository

##### [Bash configuration](bash/README.md)

###### Requirements
- [Nerd Font](https://www.nerdfonts.com/) - as prompt uses powerline symbols and glyphs 
- [Oh-My-Posh](https://ohmyposh.dev/) - a prompt theme engine for any shell
- (Optional) [FZF](https://github.com/junegunn/fzf) - a command-line fuzzy finder 

###### Install
```
make bash
```

##### [Tmux configuration](tmux/README.md)

###### Requirements
- [Nerd Font](https://www.nerdfonts.com/) - as tmux uses powerline symbols and glyphs

###### Install
```
make tmux
```

##### [Neovim configuration](nvim/README.md)

###### Requirements
- [Neovim 0.7.0+](https://github.com/neovim/neovim) - Please refer to [Neovim repository wiki](https://github.com/neovim/neovim/wiki/Installing-Neovim) for installation guide.

- [ripgrep](https://github.com/BurntSushi/ripgrep) - Required for grepping files inside Neovim (can be replaced by other grep tools)

- [bat](https://github.com/sharkdp/bat) - Required for nice, syntax  highlighted files preview (if not present preview won't be colored - "cat" will be used)

###### Install
```
make nvim
```