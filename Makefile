.PHONY: help bash tmux

help:
	@echo 'make bash - configure bash'
	@echo 'make tmux - configure tmux'

bash:
	@cp -r bash/.bash_libs ~
	@cp bash/.bashrc ~

tmux:
	@cp -r tmux/.tmux ~
	@cp tmux/.tmux.conf ~
