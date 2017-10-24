#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function search

	echo -e "-- FIND --\n"
	find . -name "*$argv[1]*"
	echo -e "\n-- GREP --\n"
	grep -R $argv[1] *

end
