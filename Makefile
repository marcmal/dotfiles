.PHONY: help bash tmux nvim starship wezterm

help:
	@echo 'Configurations:'
	@echo 'make bash - configure bash'
	@echo 'make tmux - configure tmux'
	@echo 'make nvim - configure nvim'
	@echo 'make starship - configure starship'
	@echo 'make wezterm - configure wezterm'
	@echo ''
	@echo 'make all - configure all'
	@echo ''
	@echo '[WARNING] Running above will override your current configuration.'

bash:
	@ln -fs $(PWD)/bash/.bashrc ~/.bashrc
	@ln -fs $(PWD)/bash/.bash ~/.bash

tmux:
	@ln -fs $(PWD)/tmux/.tmux.conf ~/.tmux.conf
	@ln -fs $(PWD)/tmux/.tmux ~/.tmux

nvim:
	@ln -fs $(PWD)/nvim ~/.config/nvim

starship:
	@ln -fs $(PWD)/starship/starship.toml ~/.config/starship.toml

wezterm:
	@ln -fs $(PWD)/wezterm ~/.wezterm

all : bash tmux nvim starship wezterm
