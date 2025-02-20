
update:
	# update nvim
	rm -R ~/.config/nvim
	cp -r ./nvim ~/.config/
	# copy only files from workbenches to home directory
	cp -r ./workbenches/* ~/


pmin:
	bash ./power-management/min.sh
pmax:
	bash ./power-management/max.sh
pshow:
	bash ./power-management/show.sh
