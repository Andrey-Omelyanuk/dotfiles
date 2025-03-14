
help:
	@echo "install"
	@echo "update"
	@echo "pmin"
	@echo "pmax"
	@echo "pshow"

install:
	sudo apt install vim tmux
	sudo snap install nvim --classic
	sudo snap install ghostty --classic

update:
	yes | cp -rf ./ssh/config           ~/.ssh/config
	yes | cp -rf ./bash/.bashrc         ~/.bashrc
	yes | cp -rf ./ghostty/config       ~/.config/ghostty/config
	yes | cp -rf ./tmux/.tmux.conf      ~/.tmux.conf
	yes | cp -rf ./vim/.vimrc           ~/.vimrc
	yes | cp -rf ./up.sh                ~/up.sh
	yes | cp -rf ./continue/config.yaml ~/.continue/config.yaml

	rm -Rf ~/.config/nvim
	cp -r ./nvim ~/.config/

pmin:
	bash ./power-management/min.sh
pmax:
	bash ./power-management/max.sh
pshow:
	bash ./power-management/show.sh
