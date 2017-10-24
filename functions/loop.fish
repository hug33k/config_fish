#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function loop
	while true
		eval $argv[1..-1]
		sleep 0.5
		clear
	end
end