# 
#

copy-vim:
	echo "TODO: install vim config"

nvim-install:
	cp -r ./nvim ~/.config/

nvim-remove:
	rm -R ~/.config/nvim

nvim-reset: nvim-remove nvim-install

# copy only files from workbenches to home directory
workbenches-update:
	cp -r ./workbenches/* ~/
