#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function clean
	clean
	if test -e Makefile
		make fclean
		return 0
	end
	return 0
end
