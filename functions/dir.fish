#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function dir
	mkdir $argv[1]
	cd $argv[1]
end
