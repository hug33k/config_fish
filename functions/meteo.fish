#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function meteo

	set -l location $LOCATION

	if [ (count $argv) -eq 1 ]
		set location $argv[1]
	else if [ (count $argv) -gt 1 ]
		return 1
	end

	curl wttr.in/$location

end