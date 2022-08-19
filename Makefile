plug_path := ~/.local/share/nvim/site/autoload/plug.vim

.PHONY: help nvim plug bash tmux

help:
	@echo 'make nvim - configure nvim'
	@echo 'make bash - configure bash'
	@echo 'make tmux - configure tmux'

nvim: plug
	@rm -rf ~/.config/nvim
	@cp -r nvim ~/.config/
	@nvim -c PlugInstall -c qall

plug:
	@rm -f ${plug_path}
	@sh -c "curl -fLo ${plug_path} --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

bash:
	@cp -r bash/.bash_libs ~
	@cp bash/.bashrc ~

tmux:
	@cp -r tmux/.tmux_libs ~
	@cp tmux/.tmux.conf ~
