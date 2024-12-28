

vim:
	echo "TODO: install vim config"
	

nvim:
	echo "TODO: install nvim config"

tmux:
	echo "TODO: install tmux config"

all:
	vim nvim tmux

apps:
	apt install vim nvim tmux
	echo "---------------------------"
	vim --version
	echo "---------------------------"
	nvim --version
	echo "---------------------------"
	tmux --version
	echo "---------------------------"

