
install:
	sudo apt install vim tmux
	sudo snap install nvim --classic
	sudo snap install ghostty --classic

update:
	# -- SSH -----------------------------------------------
	yes | cp -rf ./ssh/config ~/.ssh/config

	# -- Bash ----------------------------------------------
	yes | cp -rf ./bash/.bashrc ~/.bashrc

	# -- Ghostty -------------------------------------------
	yes | cp -rf ./ghostty/config ~/.config/ghostty/config

	# -- Tmux ----------------------------------------------
	yes | cp -rf ./tmux/.tmux.conf ~/.tmux.conf

	# -- Vim -----------------------------------------------
	yes | cp -rf ./vim/.vimrc ~/.vimrc

	# -- NeoVim --------------------------------------------
	rm -Rf ~/.config/nvim
	cp -r ./nvim ~/.config/

	# -- Main workbenche ----------------------------------
	yes | cp -rf ./workbenches/up.sh ~/up.sh


pmin:
	bash ./power-management/min.sh
pmax:
	bash ./power-management/max.sh
pshow:
	bash ./power-management/show.sh
