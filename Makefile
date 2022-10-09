packer_path := ~/.local/share/nvim/site/pack/packer/start/packer.nvim

.PHONY: help nvim packer bash tmux

help:
	@echo 'make nvim - configure nvim'
	@echo 'make bash - configure bash'
	@echo 'make tmux - configure tmux'

nvim: packer
	rm -rf ~/.config/nvim
	cp -r nvim ~/.config/
	nvim -u NONE -c "source ~/.config/nvim/init.lua" -c PackerSync

packer:
	rm -rf ${packer_path}
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ${packer_path}

bash:
	@cp -r bash/.bash_libs ~
	@cp bash/.bashrc ~

tmux:
	@cp -r tmux/.tmux_libs ~
	@cp tmux/.tmux.conf ~
