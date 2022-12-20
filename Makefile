.PHONY: help nvim bash tmux

help:
	@echo 'make nvim - configure nvim'
	@echo 'make bash - configure bash'
	@echo 'make tmux - configure tmux'

nvim:
	rm -rf ~/.config/nvim
	cp -r nvim ~/.config/

bash:
	@cp -r bash/.bash_libs ~
	@cp bash/.bashrc ~

tmux:
	@cp -r tmux/.tmux_libs ~
	@cp tmux/.tmux.conf ~
