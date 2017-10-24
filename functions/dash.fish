#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function dash

	set __search ""

	if begin; [ (count $argv) -eq 1 ] ; and not set -q $argv[1] ; and test -d $__project_location$argv[1]; end
		set __search $argv[1]
	end

	open dash://$__search

end
