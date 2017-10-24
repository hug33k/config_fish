#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_mypwd

	set _OLDPWD $PWD
	echo "Context: Current Working Directory is '/'"
	cd /
	__fishline_test mypwd
	echo "Context: Current Working Directory is '/tmp'"
	cd /tmp
	__fishline_test mypwd
	echo "Context: Current Working Directory is '/var/log'"
	cd /var/log
	__fishline_test mypwd
	echo "Context: Current Working Directory is '$HOME'"
	cd $HOME
	__fishline_test mypwd
	echo "Context: Current Working Directory is '$HOME/.config/fish'"
	cd $HOME/.config/fish/
	__fishline_test mypwd
	echo "Context: Current Working Directory is '$HOME/Projets'"
	cd $HOME/Projets
	__fishline_test mypwd
	echo "Context: Current Working Directory is '$HOME/Projets/Android'"
	cd $HOME/Projets/Android
	__fishline_test mypwd
	echo "Context: Current Working Directory is '$HOME/Projets/Python/eblih'"
	cd $HOME/Projets/Python/eblih
	__fishline_test mypwd
	cd $_OLDPWD

end
