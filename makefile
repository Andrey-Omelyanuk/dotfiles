
install:
	sudo apt install vim tmux
	sudo snap install nvim --classic
	sudo snap install ghostty --classic

update:
	# -- Bash ----------------------------------------------
	rm -f ~/.bashrc
	cp ./bash/.bashrc ~/.bashrc

	# -- Ghostty -------------------------------------------
	rm -f ~/.config/ghostty/config
	cp ./ghostty/config ~/.config/ghostty/config

	# -- Tmux ----------------------------------------------
	rm -f ~/.tmux.conf
	cp ./tmux/.tmux.conf ~/.tmux.conf

	# -- Vim -----------------------------------------------
	rm -f ~/.vimrc
	cp ./vim/.vimrc ~/.vimrc

	# -- NeoVim --------------------------------------------
	rm -Rf ~/.config/nvim
	cp -r ./nvim ~/.config/


pmin:
	bash ./power-management/min.sh
pmax:
	bash ./power-management/max.sh
pshow:
	bash ./power-management/show.sh
